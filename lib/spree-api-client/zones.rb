module Spree
  module API
    class Client
      module Zones
        def zones(options={})
          get('zones', options)['zones']
        end
        
        def zone(id, options={})
          get("zones/#{id}", options)
        end
        
        def new_zone(options={})
          get("zones/#{id}/new", options)
        end
        
        def create_zone(options={})
          post("zones", options)
        end
        
        def update_zone(id, options={})
          put("zones/#{id}", options)
        end
        
        def delete_zone(id, options={})
          delete("zones/#{id}", options)
        end
      end
    end
  end
end
