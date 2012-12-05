module Spree
  module API
    class Client
      module Properties
        def properties(product_id, options={})
          get("products/#{product_id}/product_properties", options)['product_properties']
        end

        def property(product_id, property_id, options={})
          get("products/#{product_id}/product_properties/#{property_id}", options)
        end

        def new_property(product_id, options={})
          get("products/#{product_id}/product_properties/new", options)
        end

        def create_property(product_id, options={})
          post("products/#{product_id}/product_properties/", options)
        end

        def update_property(permalink_or_id, property_id, options={})
          put("products/#{product_id}/product_properties/#{property_id}", options)
        end

        def delete_property(permalink_or_id, property_id, options={})
          delete("products/#{product_id}/product_properties/#{property_id}", options)
        end
      end
    end
  end
end