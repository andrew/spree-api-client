module Spree
  module API
    class Client
      module ReturnAuthorizations
        def return_authorizations(order_id, options={})
          get("orders/#{order_id}/return_authorizations", options)['return_authorizations']
        end

        def return_authorization(order_id, return_authorization_id, options={})
          get("orders/#{order_id}/return_authorizations/#{return_authorization_id}", options)
        end

        def new_return_authorization(order_id, options={})
          get("orders/#{order_id}/return_authorizations/new", options)
        end

        def create_return_authorization(order_id, options={})
          post("orders/#{order_id}/return_authorizations/", options)
        end

        def update_return_authorization(permalink_or_id, return_authorization_id, options={})
          put("orders/#{order_id}/return_authorizations/#{return_authorization_id}", options)
        end

        def delete_return_authorization(permalink_or_id, return_authorization_id, options={})
          delete("orders/#{order_id}/return_authorizations/#{return_authorization_id}", options)
        end
      end
    end
  end
end
