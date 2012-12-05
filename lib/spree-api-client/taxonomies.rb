module Spree
  module API
    class Client
      module Taxonomies
        def taxonomies(options={})
          get('taxonomies', options)['taxonomies']
        end
        
        def taxonomy(id, options={})
          get("taxonomies/#{id}", options)
        end
        
        def new_taxonomy(options={})
          get("taxonomies/#{id}/new", options)
        end
        
        def create_taxonomy(options={})
          post("taxonomies", options)
        end
        
        def update_taxonomy(id, options={})
          put("taxonomies/#{id}", options)
        end
        
        def delete_taxonomy(id, options={})
          delete("taxonomies/#{id}", options)
        end
      end
    end
  end
end