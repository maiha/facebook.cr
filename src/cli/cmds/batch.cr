Cmds.command "batch" do
  # [Task]
  #   clean
  task clean, "<date>" do
    Pretty.rm_rf(today_dir)
    logger.info "Deleted #{today_dir}"
  end
  
  usage "run 2017-11-13"
  # [Task]
  #   run
  # [Responsibility]
  #   meta task of all tasks
  # [Input]
  #   See each task
  # [Output]
  #   See each task
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
  task "recv", "<date>" do
    recv_impl

    update_status "[recv:done] API:#{api} MEM:#{Pretty.process_info.max}", logger: "INFO"
  end

  task "db", "<date>" do
    invoke_task("tsv")
    invoke_task("clickhouse")
  end

  task "tsv", "<date>" do
    tsv_impl
  end  

  task "clickhouse" do
    invoke_task("clickhouse_import")
    invoke_task("clickhouse_after")

    update_status "[clickhouse:done] DB:#{db} MEM:#{Pretty.process_info.max}", logger: "INFO"
  end

  task "clickhouse_import" do
    {% for klass in MODEL_CLASS_IDS %}
      {% proto  = "Facebook::Proto::#{klass}".id %}
      import_clickhouse_tsv {{proto}}
    {% end %}

    import_clickhouse_tsv_snap
  end
  
  task "clickhouse_snap" do
    if ! File.exists?(snap_tsv)
      write_snap_tsv
    end

    import_clickhouse_tsv_snap
  end

  task "clickhouse_after" do
    clickhouse_views_union "mutable", ["account_id String", "id String", "updated_time DateTime"]
  end

  task "gc" do
    return if !config.batch_gc?

    gc_storage HttpCall
    gc_tsv
    gc_snap

    update_status "[gc:done] DISK:#{disk} MEM:#{Pretty.process_info.max}", logger: "INFO"
  end
  
  task "check", "<date>" do
    status_impl
  end
end

require "./batch/*"
