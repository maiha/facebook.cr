class Cmds::BatchCmd
  var snap_columns : Array(Clickhouse::Column) = clickhouse_columns(["account_id String", "id String", "updated_time Datetime"])

  {% begin %}
  def tsv_impl
    {% for klass in MODEL_CLASS_IDS %}
      {% proto  = "Facebook::Proto::#{klass}".id %}
      if enabled?({{proto}})
        write_tsv_impl({{proto}})
      end
    {% end %}

    write_snap_tsv
  end
  {% end %}

  # - convert <TAB> to <SPACE>
  # - convert <BACKSLASH> to <BACKSLASH><BACKSLASH>
  private macro write_tsv_impl(proto)
    sep   = '\t'
    quote = CSV::Builder::Quoting::NONE
    name  = Pretty.underscore("{{proto}}".split(/::/).last)
    file  = "#{name}.tsv"
    path  = "#{today_dir}/tsv/#{file}"

    array_fields = Set(String).new
    field_types = Hash(String, String).new
    {% for tag, h in proto.resolve.constant("FIELDS") %}
      {% if h[:repeated] %}
        array_fields << {{h[:name].stringify}}.sub(/:/,"")
      {% end %}
      field_types[{{h[:name].stringify}}.sub(/:/,"")] = {{h[:crystal_type].stringify}}.sub(/:/,"")
    {% end %}

    pbs  = storage({{proto}}).load
    data = disk.measure {
      CSV.build(quoting: quote, separator: sep) do |csv|
        pbs.each do |pb|
          vals = pb.to_hash.map{|k,v|
            if v.is_a?(Time)
              v = v.to_s("%F %T")
            elsif v.is_a?(Datetime)
              v = Pretty::Time.parse(v.value).to_local.to_s("%F %T")
            elsif array_fields.includes?(k)
              # (Array)
              if v
                case field_types[k]
                when "String"
                  if v && v.is_a?(Array)
                    v = "[%s]" % v.map{|i|
                      "'%s'" % i.to_s.gsub(/'/,"\\'").gsub(/"/,%(""))
                    }.join(",")
                  else
                    v = "[]"
                  end
                when "Bool"
                  # ClickHouse use UInt8 for Boolean
                  v = v ? 1 : 0
                else
                  # Otherwise, delegates to CSV builder
                end
              else
                # empty array
                v = "[]"
              end

            else
              # (not Array)
              case field_types[k]
              when "Bool"
                # ClickHouse use UInt8 for Boolean
                v = v ? 1 : 0
              when "String"
                # convert TAB and RET to spaces
                v = v.to_s.gsub('\t', ' ').gsub('\n', ' ')
                # escape backslashes
                v = escape_backslashes(v)
              else
                # Nullable
                if v.to_s.empty?
                  v = "\\N"
                end
              end
            end
            v
          }
          csv.row(vals)
        end
      end
    }
    Pretty::File.write(path, data)
    logger.info "[tsv] %s [%s]" % [file, disk.last]
  end

  # backslash string in macro fails
  # see https://github.com/crystal-lang/crystal/issues/8064
  private def escape_backslashes(v)
    v.gsub('\\', "\\\\")
  end

  private def write_snap_tsv
    Pretty.rm_f(snap_tsv)
    Pretty.rm_f(snap_tmp)
    Pretty::Dir.clean(snap_dir)

    File.touch(snap_tmp)

    watch = Pretty::Stopwatch.new
    {% for klass in MODEL_CLASS_IDS %}
      write_snap_tmp Facebook::Proto::{{klass}}
    {% end %}
    watch.stop

    Pretty.mv(snap_tmp, snap_tsv)
    bytes = Pretty.bytes(File.size(snap_tsv))
    logger.info "[tsv] (snap) %s [%s]" % [bytes, watch.last]
  end

  # create snap TSV for klass
  # [in ] FILE: FacebookAds::Proto::* # FacebookAds::Proto::Campaign
  # [out] FILE: snap/*.tsv           # "snap/campaign.tsv"
  private macro write_snap_tmp(proto)
    # TSV to be created
    # ```
    # date:       2019-08-18
    # table:      account_media
    # account_id: 18ce53w53uj
    # id:         3c01l
    # updated_time: 2017-10-19 12:19:36
    # json:       {"id":"3c01l","creative_type":"PREROLL","video_id":"13_920851372160847873","media_url":"","created_at":"2017-10-19T03:19:36Z","updated_time":"2017-10-19T03:19:36Z","deleted":0,"account_id":"18ce53w53uj"}
    # ```

    # Check if this klass has snap_columns since it will be executed for all PBs
    a1 = snap_columns.map(&.to_s).sort
    a2 = pb_columns({{proto}}).map(&.to_s).sort
    found = ((a1 & a2) == a1)

    details = a1.map{|c|
      color = a2.includes?(c) ? :cyan : :yellow
      c.sub(/\s.*$/, "").colorize(color)
    }
    name = {{proto}}.to_s.split(/::/).last
    colored_name = name.colorize(found ? :green : :yellow)
    msg = "write_snap_tmp: [%s] => %s (%s)" % [colored_name, found, details]
    logger.debug msg
    
    if found
      tbl     = Pretty.underscore("{{proto}}".split(/::/).last)
      builder = Protobuf::ClickhouseTsv.builder({{proto}})
      ary     = storage({{proto}}).load.map(&.to_hash)
      write_snap_tmp_impl(tbl, builder, ary)
    end
  end

  private def write_snap_tmp_impl(tbl, builder, ary)
    hint   = tbl
    # hash = Hash(String, String).new # key: "#{account_id}-#{id}", val: TSV
    date_s = target_date.to_s("%F")
    watch  = Pretty::Stopwatch.new

    watch.start
    data = String.build do |io|
      ary.each_with_index do |hash, i|
        label = "#{hint}:#{i+1}"

        # key = "#{pb.account_id}-#{pb.id}"

        v = hash["updated_time"]? || abort("#{label}: no updated_time")
        updated_time = Pretty.time(v.to_s).to_local
        json = hash.to_json.gsub(/[\t\n]/, " ")

        # [expected TSV]
        # {{date}}[TAB]{{table}}[TAB]38k5iy[TAB]7to[TAB]{"id":...}
        io << date_s
        io << '\t' << tbl
        io << '\t' << hash["account_id"]? || abort("#{label}: no account_id")
        io << '\t' << hash["id"]? || abort("#{label}: no id")
        io << '\t' << updated_time.to_s("%F %T")
        io << '\t' << json
        io.puts
      end
    end
    watch.stop
    
    path = File.join(snap_dir, "#{tbl}.tsv")
    Pretty::File.write(path, data)
    File.open(snap_tmp, "a+"){|f| f.print data}

    bytes = Pretty.bytes(File.size(path))
    logger.info "[tsv] (snap) %s.tsv (%s) [%s]" % [tbl, bytes, watch]
  end

  private macro pb_columns(proto)
    Array(Clickhouse::Column).new.tap{|a|
    {% for tag, h in proto.resolve.constant("FIELDS") %}
      a << Clickhouse::Column.new({{h[:name].stringify}}.delete(':'), {{h[:crystal_type].stringify}})
    {% end %}
    }
  end

end
