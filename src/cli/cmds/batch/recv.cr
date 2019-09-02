# add methods to open class
class Cmds::BatchCmd
  var visited_urls = Set(String).new

  CMD_PARAM_ACCOUNT_ID = "ad_account.id"
  META_PAGING_NEXT = "paging_next"
  META_WARN        = "warn"

  private macro api(klass)
    {% name  = klass.stringify.underscore %}
    {% proto = "Facebook::Proto::#{klass}".id %}

    api_recv({{klass}}, {{name}}, {{proto}})
  end

  private macro api_accounted(klass)
    {% name  = klass.stringify.underscore %}
    {% proto = "Facebook::Proto::#{klass}".id %}

    api_accounted_recv({{klass}}, {{name}}, {{proto}})
  end

  # receive model, and store it in Protobuf::House
  private macro api_recv(klass, name, proto)
    {% recv  = "recv_" + name %}
    def {{recv.id}}
      return false unless enabled?({{proto}})     

      hint  = "[recv] {{name.id}}"
      house = storage({{proto}})
      
      count = house.count
      if count > 0
        logger.info "%s (skip: cached %d)" % [hint, count]
        return false
      end

      if get_cmd = config.api_cmd?({{name}})
        logger.debug "%s (cmd found: %s)" % [hint, get_cmd]
      else
        logger.warn "%s (skip: config:%s.cmd is nil)" % [hint, {{name}}]
        return false
      end

      paging_index = 0
      recv.start
      
      while true
        paging_index += 1
        label = "#{hint}##{paging_index}"
        
        if paging_index > paging_limit
          logger.warn "#{label}: reached max loop limit(#{paging_limit})"
          break
        end

        client = new_client
        if url = house.meta[META_PAGING_NEXT]?
          client.paging_next!(url)
        else
          client.api = get_cmd
        end

        client.before_execute {|req|
          url = req.full_url

          if visited_urls.includes?(url)
            raise "[BUG] %s: already visited: %s" % [label, url]
          end
        }

        #      res = retry(label, api) {
        api.start
        res = client.execute
  #      }
        api.stop
        mark_visited!(res.req.full_url)

        parser = Facebook::Response::Parser({{proto}}).from_json(res.body)
        if error = parser.error
          raise error.inspect
        end

        fetched = parser.to_a
        house.tmp(fetched, {
          META_PAGING_NEXT => parser.paging.try(&.next),
        })

        logger.info "%s: %s (%s)" % [label, fetched.size, api.last]
        
        if url = house.meta[META_PAGING_NEXT]?
          logger.debug "%s: paging found: next=%s" % [hint, url]
        else
          break
        end
      end

      recv.stop
      house.commit
      logger.info "%s: %d [%s]" % [hint, house.count, recv.last.to_s]

      return true
    end
  end


  # receive model, and store it in Protobuf::House
  private macro api_accounted_recv(klass, name, proto)
    {% recv  = "recv_" + name %}
    def {{recv.id}}
      return false unless enabled?({{proto}})     

      hint  = "[recv] {{name.id}}"
      house = storage({{proto}})
      
      count = house.count
      if count > 0
        logger.info "%s (skip: cached %d)" % [hint, count]
        return false
      end

      cmd = ParamsCmd.parse?(config.api_cmd?({{name}})) || (
        logger.warn "%s (skip: config:%s.cmd is nil)" % [hint, {{name}}]
        house.meta[META_WARN] = "cmd is nil"
        return false
      )
      logger.debug "%s (cmd found: %s)" % [hint, cmd]

      cmd.params.any? ||
        raise ArgumentError.new("%s: no params in cmd: %s" % [hint, cmd.to_s.inspect])

      cmd.params == [CMD_PARAM_ACCOUNT_ID] ||
        raise ArgumentError.new("%s: ParamsCmd now supports only %s" % [hint, CMD_PARAM_ACCOUNT_ID])

      parent_ids = storage(Facebook::Proto::AdAccount).load.map{|pb|
        pb.id || raise ArgumentError.new("%s: ad_account.id is nil (%s)" % [hint, pb.to_hash.inspect])
      }
      # TODO: use field name in `cmd.params` rather than fixed `id`.
      if parent_ids.empty?
        logger.info "%s (skip: parent is empty [%s])" % [hint, "AdAccount"]
        return false
      end

      # check suspended job
      job_group = parent_ids.sort.inspect
      job_value = house.resume?(job_group)

      # target loop
      target_ids = parent_ids

      if current_id = job_value
        if paging_next = house.meta[META_PAGING_NEXT]?
          # if paging_next, restart the job with the id
          target_ids = target_ids.select{|id| id >= current_id}
        else
          # if not paging_next, skip to the next job
          target_ids = target_ids.select{|id| id > current_id}
        end
        skipped_count = parent_ids.size - target_ids.size
        logger.info "%s: found suspended job[%s] (skip: %s)" % [hint, current_id, skipped_count]
      end
      
      target_ids.each_with_index do |parent_id, target_idx|
        paging_index = 0
        recv.start
      
        while true
          paging_index += 1
          label = "#{hint}(#{target_idx+1}/#{target_ids.size})##{paging_index}"
        
          if paging_index > paging_limit
            logger.warn "#{label}: reached max loop limit(#{paging_limit})"
            break
          end

          client = new_client
          if url = house.meta[META_PAGING_NEXT]?
            client.paging_next!(url)
          else
            api_cmd = cmd.resolve({CMD_PARAM_ACCOUNT_ID => parent_id})
            logger.debug "%s: cmd(%s: %s) => %s" % [hint, CMD_PARAM_ACCOUNT_ID, parent_id, api_cmd]
            client.api = api_cmd
          end

          client.before_execute {|req|
            url = req.full_url

            if visited_urls.includes?(url)
              raise "[BUG] %s: already visited: %s" % [label, url]
            end
          }

          #      res = retry(label, api) {
          api.start
          res = client.execute
          #      }
          api.stop
          mark_visited!(res.req.full_url)

          parser = Facebook::Response::Parser({{proto}}).from_json(res.body)
          if error = parser.error
            raise error.inspect
          end

          fetched = parser.to_a
          house.tmp(fetched, {
            META_PAGING_NEXT => parser.paging.try(&.next),
          })
          house.checkin(group: job_group, value: parent_id)
                          
          logger.info "%s: %s (%s)" % [label, fetched.size, api.last]
        
          if url = house.meta[META_PAGING_NEXT]?
            logger.debug "%s: paging found: next=%s" % [hint, url]
          else
            break
          end
        end
      end

      recv.stop
      house.commit
      house.checkout

      logger.info "%s: %d [%s]" % [hint, house.count, recv.last.to_s]

      return true
    end
  end

  private def mark_visited!(url : String)
    visited_urls << url
  end

  private def new_client
    client = config.facebook_client
    client.after_execute {|req, res| write_http_call(req, res)}
    return client
  end

  api AdAccount
  api_accounted AdSet
  api_accounted Campaign
end
