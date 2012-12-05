module Spree
  module API
    class Client
      module Variants
        def variants(product_id, options={})
          get("products/#{permalink_or_id}/variants", options)['variants']
        end

        def variant(product_id, variant_id, options={})
          get("products/#{permalink_or_id}/variants/#{variant_id}", options)
        end

        def new(product_id, options={})
          get("products/#{permalink_or_id}/variants/new", options)
        end

        def create(product_id, options={})
          post("products/#{permalink_or_id}/variants/", options)
        end

        def update(permalink_or_id, variant_id, options={})
          put("products/#{permalink_or_id}/variants/#{variant_id}", options)
        end

        def delete(permalink_or_id, variant_id, options={})
          delete("products/#{permalink_or_id}/variants/#{variant_id}", options)
        end
      end
    end
  end
end