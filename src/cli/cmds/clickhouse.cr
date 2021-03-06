Cmds.command "clickhouse" do
  usage "schema       facebook"
  usage "schema       facebook 20180911"
  usage "schema.merge facebook"
  usage "schema.tmp   facebook 20180911"
  usage "import 20180911 data.tsv"
  usage "import 20180911 data.tsv"
  usage "replace account data.tsv"
  usage "execute facebook  # run sql(facebook)"
  
  var target_date : Time
  var host  : String = config.clickhouse_host
  var port  : Int32  = config.clickhouse_port
  var db    : String = config.clickhouse_db

  task "schema", "table_name (postfix)" do
    table = arg1? || raise Cmds::ArgumentError.new("Table name not found")
    do_schema(table, postfix: arg2?)
  end

  task "schema.tmp", "table_name (postfix)" do
    table = arg1? || raise Cmds::ArgumentError.new("Table name not found")
    do_schema(table, postfix: arg2?, tmp: true)
  end

  task "schema.merge", "table_name (postfix)" do
    table = arg1? || raise Cmds::ArgumentError.new("Table name not found")
    do_schema(table, postfix: arg2?, merge: true)
  end

  task "replace", "table_name tsv_path" do
    name = arg1? || raise Cmds::ArgumentError.new("Table name not found")
    path = arg2? || raise Cmds::ArgumentError.new("TSV not found")
    fmt  = "TSV"

    schema = schema_create?(name) || abort "no bundled schema for '#{name}'"
    File.exists?(path) || raise Cmds::ArgumentError.new("TSV not found: '#{path}'")
    
    tmp  = "tmp_#{name}"
    dst  = "#{name}"
    old  = tmp + "_old"

    shell  = Shell::Seq.new
    shell.dryrun = config.dryrun

    this   = "#{PROGRAM_NAME} clickhouse"
    client = "clickhouse-client -h '#{host}' --port #{port} -d '#{db}'"

    current_tables = shell.dryrun? ? Array(String).new : Clickhouse.new.database(db).tables.map(&.name)

    # 0. create database
    shell.run("clickhouse-client -h '#{host}' --port #{port} -q 'CREATE DATABASE IF NOT EXISTS #{db}'")

    # 1. delete old table
    shell.run("#{client} -q 'DROP TABLE IF EXISTS #{old}'")

    # 2. delete tmp table
    shell.run("#{client} -q 'DROP TABLE IF EXISTS #{tmp}'")
    shell.run("#{this} schema.tmp #{name} | #{client}")

    # 3. insert data into tmp table
    if File.size(path) > 0
      shell.run("#{client} -q 'INSERT INTO #{tmp} FORMAT #{fmt}' <  #{path}")
    end

    # 4. rename all tables at once
    if current_tables.includes?(dst)
      shell.run("#{client} -q 'RENAME TABLE #{dst} TO #{old}, #{tmp} TO #{dst}'")
    else
      shell.run("#{client} -q 'RENAME TABLE #{tmp} TO #{dst}'")
    end

    # 5. delete old table
    shell.run("#{client} -q 'DROP TABLE IF EXISTS #{old}'")

    if shell.dryrun?
      STDOUT.puts shell.manifest
    else
      unless shell.success?
        msg = "FAIL: %s\n%s" % [shell.last.cmd, shell.stderr]
        abort msg
      end
    end
  end

  task "import", "table date path" do
    table = arg1? || raise Cmds::ArgumentError.new("Table name not found")
    date  = arg2? || raise Cmds::ArgumentError.new("Date not found")
    path  = arg3? || raise Cmds::ArgumentError.new("TSV not found")

    ymd  = Pretty.date(date).to_s("%Y%m%d")
    tmp  = build_table_name(table, postfix: ymd, tmp: true)
    dst  = build_table_name(table, postfix: ymd)
    old  = tmp + "_old"
    fmt  = "TSV"

    shell  = Shell::Seq.new
    shell.dryrun = config.dryrun

    this   = "#{PROGRAM_NAME} clickhouse"
    client = "clickhouse-client -h '#{host}' --port #{port} -d '#{db}'"

    # 0. create database
    shell.run("clickhouse-client -h '#{host}' --port #{port} -q 'CREATE DATABASE IF NOT EXISTS #{db}'")

    # 1. create merge table
    shell.run("#{this} schema.merge #{table} | #{client}")

    # 2. create given dated table
    shell.run("#{this} schema #{table} #{ymd} | #{client}")

    # 3. create given dated tmp table
    shell.run("#{client} -q 'DROP TABLE IF EXISTS #{tmp}'")
    shell.run("#{this} schema.tmp #{table} #{ymd} | #{client}")

    # 4. insert data into dated tmp table
    shell.run("#{client} -q 'INSERT INTO #{tmp} FORMAT #{fmt}' <  #{path}")

    # 5. rename all tables at once
    shell.run("#{client} -q 'DROP TABLE IF EXISTS #{old}'")
    shell.run("#{client} -q 'RENAME TABLE #{dst} TO #{old}, #{tmp} TO #{dst}'")

    # 6. delete old table
    shell.run("#{client} -q 'DROP TABLE IF EXISTS #{old}'")

    if shell.dryrun?
      STDOUT.puts shell.manifest
    else
      unless shell.success?
        msg = "FAIL: %s\n%s" % [shell.last.cmd, shell.stderr]
        abort msg
      end
    end
  end

  task "execute", "sql" do
    name = arg1? || raise Cmds::ArgumentError.new("no sql name")

    shell  = Shell::Seq.new
    shell.dryrun = config.dryrun

    this   = "#{PROGRAM_NAME} clickhouse"
    client = "clickhouse-client -h '#{host}' --port #{port}"

    shell.run("#{this} schema #{name} | #{client}")

    if shell.dryrun?
      STDOUT.puts shell.manifest
    else
      unless shell.success?
        msg = "FAIL: %s\n%s" % [shell.last.cmd, shell.stderr]
        abort msg
      end
    end
  end
  
  protected def do_schema(name : String, postfix = nil, tmp = false, merge = false)
    if sql = Bundled::SQL[name]?
      if postfix || tmp || merge
        create = Clickhouse::Schema::Create.parse(sql)
        puts build_schema(name, postfix: postfix, tmp: tmp, merge: merge)
      else
        puts sql
      end
    else
      abort "schema not found: '#{name}'"
    end
  end

  private def build_table_name(table : String, postfix : String? = nil, tmp = false) : String
    name = table                             # "facebook"
    name = "#{name}_%s" % postfix if postfix # "facebook_20180911"
    name = "tmp_#{name}" if tmp              # "tmp_facebook_20180911"
    return name
  end

  private def build_schema(name : String, postfix = nil, tmp = false, merge = false) : String
    create = schema_create?(name) || abort "schema not found: '#{name}'"
    create.create = "CREATE TABLE IF NOT EXISTS"
    create.db     = db
    if merge
      create.table  = name
      create.engine = "Merge(%s, '^%s_')\n" % [db, name]
    else
      create.table  = build_table_name(name, postfix: postfix, tmp: tmp)
    end
    return create.to_sql
  end
  
  private def schema_create?(name) : Clickhouse::Schema::Create?
    if sql = Bundled::SQL[name]?
      Clickhouse::Schema::Create.parse(sql)
    else
      nil
    end
  end

end
