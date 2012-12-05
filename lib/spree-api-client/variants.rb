module Spree
  module API
    class Client
      module Variants
        def variants(product_id, options={})
          get("products/#{product_id}/variants", options)['variants']
        end

        def variant(product_id, variant_id, options={})
          get("products/#{product_id}/variants/#{variant_id}", options)
        end

        def new_variant(product_id, options={})
          get("products/#{product_id}/variants/new", options)
        end

        def create_variant(product_id, options={})
          post("products/#{product_id}/variants/", options)
        end

        def update_variant(permalink_or_id, variant_id, options={})
          put("products/#{product_id}/variants/#{variant_id}", options)
        end

        def delete_variant(permalink_or_id, variant_id, options={})
          delete("products/#{product_id}/variants/#{variant_id}", options)
        end
      end
    end
  end
end