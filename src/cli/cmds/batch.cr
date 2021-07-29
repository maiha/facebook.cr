Cmds.command "batch" do
  usage "# daily batch sample"

  # [Task]
  #   clean
  desc "clean <date>","# delete all files in 'recv/<date>'"
  task clean, "<date>" do
    Pretty.rm_rf(today_dir)
    logger.info "Deleted #{today_dir}"
  end
  
  # [Task]
  #   run
  # [Responsibility]
  #   meta task of all tasks
  # [Input]
  #   See each task
  # [Output]
  #   See each task
  desc "run <date>", "# fetch and import as instructed by the config"
  task "run", "<date>" do
    invoke_task("recv")
    invoke_task("check")
    invoke_task("db")
  end

  # [Task]
  #   recv
  # [Responsibility]
  #   receive all data from Facebook by invoking api
  # [Input]
  #   API:
  # [Output]
  #   FILE: Facebook::Proto::*/
  desc "recv <date>", "# fetch as instructed by the config"
  task "recv", "<date>" do
    recv_impl

    update_status "[recv:done] API:#{api} MEM:#{max_mem}", logger: "INFO"
  end

  desc "db <date>", "# build TSV and import them to clickhouse"
  task "db", "<date>" do
    invoke_task("tsv")
    invoke_task("clickhouse")
  end

  desc "tsv <date>", "# convert fetched data to TSV"
  task "tsv", "<date>" do
    tsv_impl
  end  

  desc "clickhouse <date>", "# update data in ClickHouse for the <date>"
  task "clickhouse" do
    invoke_task("clickhouse_import")
    invoke_task("clickhouse_after")

    update_status "[clickhouse:done] DB:#{db} MEM:#{max_mem}", logger: "INFO"
  end

  desc "clickhouse_import <date>", "# import TSV to ClickHouse"
  task "clickhouse_import" do
    {% for klass in MODEL_CLASS_IDS %}
      {% proto  = "Facebook::Proto::#{klass}".id %}
      import_clickhouse_tsv {{proto}}
    {% end %}

    import_clickhouse_tsv_snap
  end
  
  desc "clickhouse_snap <date>", "# create snap data in ClickHouse"
  task "clickhouse_snap" do
    if ! File.exists?(snap_tsv)
      write_snap_tsv
    end

    import_clickhouse_tsv_snap
  end

  desc "clickhouse_after <date>", "# run after hook for ClickHouse"
  task "clickhouse_after" do
    clickhouse_views_union "mutable", ["account_id String", "id String", "updated_time DateTime"]
  end

  desc "gc <date>", "# compress and delete intermediate files in the real valley"
  task "gc" do
    return if !config.batch_gc?

    gc_storage HttpCall
    gc_tsv
    gc_snap

    update_status "[gc:done] DISK:#{disk} MEM:#{max_mem}", logger: "INFO"
  end
  
  desc "check <date>", "# check the status of batch of <date>"
  task "check", "<date>" do
    status_impl
  end
end

require "./batch/*"
