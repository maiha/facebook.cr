# add methods to open class
class Cmds::BatchCmd
  var visited_urls = Set(String).new

  META_PAGING_NEXT = "paging_next"

  record EdgeCmd,
         cmd : String
  
  private macro api(klass, parent = nil)
    {% name  = klass.stringify.underscore %}
    {% proto = "Facebook::Proto::#{klass}".id %}

    {% if parent %}
      api_recv_from_parent({{klass}}, {{name}}, {{proto}}, {{parent}})
    {% else %}
      api_recv({{klass}}, {{name}}, {{proto}})
    {% end %}
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
  private macro api_recv_from_parent(klass, name, proto, parent)
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

      parent
      
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

  private def mark_visited!(url : String)
    visited_urls << url
  end

  private def new_client
    client = config.facebook_client
    client.after_execute {|req, res| write_http_call(req, res)}
    return client
  end
  
  api AdAccount
  api Campaign, parent: AdAccount
end
