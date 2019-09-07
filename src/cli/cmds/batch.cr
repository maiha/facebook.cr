Cmds.command "batch" do
  ### API
  var paging_limit : Int32 = 1_000     # pagination limit
  var paging_width : Int32 = 1_000     # element size in a page

  ### Facebook API
  var keep_remaining : Int32 = 10      # keep this limit rate, othewise stop

  ### retry
  var api_base_interval : Time::Span = 3.seconds # interval between retries

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

    logger.info "[recv:done] API:#{api} MEM:#{Pretty.process_info.max}"
  end

  task "status", "<date>" do
    status_impl
  end
end

require "./batch/*"
