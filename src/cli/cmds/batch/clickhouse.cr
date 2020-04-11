class Cmds::BatchCmd
  protected def clickhouse_sqls_execute_bundled(key)
    shell = Shell::Seq.new
    shell.dryrun = config.dryrun

    db.measure {
      shell.run("#{PROGRAM_NAME} clickhouse execute #{key}")
    }

    if shell.dryrun?
      STDOUT.puts shell.manifest
    else
      unless shell.success?
        msg = "FAIL: %s\n%s" % [shell.last.cmd, shell.stderr]
        abort msg
      end
      logger.info "[clickhouse] (sqls) %s [%s]" % [key, db.last]
    end
  end

  var clickhouse_table_metas : Array(Tuple(String, String)) = load_clickhouse_table_metas

  private def load_clickhouse_table_metas
    client = Clickhouse.new(config.clickhouse_host)

    # Get all table names with Log engine and their schema information
    sql = <<-SQL
      SELECT name, create_table_query as meta
      FROM system.tables
      WHERE database = '#{config.clickhouse_db}'
        AND engine = 'Log'
      ORDER BY name
      SQL
    res = client.execute(sql).success!
    res.map(String, String)
  end

  private def clickhouse_columns(columns : Array(String)) : Array(Clickhouse::Column)
    columns.map{|i|
      name, type = i.split(/\s+/, 2) # "account_id String"
      Clickhouse::Column.new(name, type)
    }
  end
  
  # Collect table names with expected columns
  private def clickhouse_find_tables_contains(columns : Array(Clickhouse::Column))
    tables = Array(String).new
    clickhouse_table_metas.each do |(name, meta)|
      create = Clickhouse::Schema::Create.parse(meta) rescue next
      if columns.all?{|c| create.column(c.name).type == c.type rescue false}
        tables << name
      end
    end
    return tables
  end

  # Collect table names with expected columns from String
  private def clickhouse_find_tables_contains(columns : Array(String))
    return clickhouse_find_tables_contains(clickhouse_columns(columns))
  end

  protected def clickhouse_views_union(table, columns)
    columns_hint = columns.inspect
    columns = clickhouse_columns(columns)
    tables = clickhouse_find_tables_contains(columns)

    # nothing to do if no tables exist
    if tables.empty?
      logger.warn "[clickhouse] facebook.#{table}: no tables found for #{columns_hint}"
      return false
    end

    # create view query
    sql = String.build do |s|
      s.puts "DROP TABLE IF EXISTS facebook.#{table};"
      s.puts
      s.puts "CREATE VIEW facebook.#{table} AS"
      s.puts

      field_name = columns.map(&.name).join(", ")
      s.puts tables.map{|name|
        <<-SQL
          SELECT '#{name}' as table, #{field_name}
          FROM   facebook.#{name}
          SQL
      }.join("\n\nUNION ALL\n")
    end
    logger.debug "[clickhouse] facebook.#{table}: \n" + sql

    # create view
    db.measure {
      client = "clickhouse-client -h '#{config.clickhouse_host}' --port #{config.clickhouse_port} -mnA"
      stdin = IO::Memory.new.tap{|io| io.puts sql; io.rewind}
      Shell.run(client, stdin: stdin)
    }
    logger.info "[clickhouse] (view) facebook.#{table} [%s]" % [db.last]
  end

  protected def import_clickhouse_tsv_snap
    # import to ClickHouse
    db.measure {
      shell = Shell::Seq.new
      shell.dryrun = config.dryrun

      shell.run("#{PROGRAM_NAME} clickhouse import snap #{target_ymd} #{snap_tsv}")

      if shell.dryrun?
        STDOUT.puts shell.manifest
      else
        unless shell.success?
          msg = "FAIL: %s\n%s" % [shell.last.cmd, shell.stderr]
          abort msg
        end
      end
    }
    logger.info "[clickhouse] (tsv) snap [%s]" % [db.last]
  end

  private macro import_clickhouse_tsv(proto)
    if enabled?({{proto}})
      _tbl_  = Pretty.underscore("{{proto}}".split(/::/).last)
      _path_ = File.join(today_dir, "tsv", "#{_tbl_}.tsv")
      import_clickhouse_tsv_impl(_tbl_, _path_)
    end
  end

  private def import_clickhouse_tsv_impl(table, path)
    shell = Shell::Seq.new
    shell.dryrun = config.dryrun

    db.measure {
      shell.run("#{PROGRAM_NAME} clickhouse replace #{table} #{path}")
    }

    if shell.dryrun?
      STDOUT.puts shell.manifest
    else
      unless shell.success?
        msg = "FAIL: %s\n%s" % [shell.last.cmd, shell.stderr]
        abort msg
      end
      logger.info "[clickhouse] (tsv) %s [%s]" % [table, db.last]
    end
  end
  
end
