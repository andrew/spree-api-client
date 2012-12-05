module Spree
  module API
    class Client
      module Products
        def products(options={})
          get('products', options)['products']
        end
        
        def product(permalink_or_id, options={})
          get("products/#{permalink_or_id}", options)
        end
        
        def new(options={})
          get("products/#{permalink_or_id}/new", options)
        end
        
        def create(options={})
          post("products", options)
        end
        
        def update(permalink_or_id, options={})
          put("products/#{permalink_or_id}", options)
        end
        
        def delete(permalink_or_id, options={})
          delete("products/#{permalink_or_id}", options)
        end
      end
    end
  end
end