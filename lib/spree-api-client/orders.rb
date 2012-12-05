module Spree
  module API
    class Client
      module Orders
        def orders(options={})
          get('orders', options)['orders']
        end
        
        def order(order_number, options={})
          get("orders/#{order_number}", options)
        end
        
        def create(options={})
          post("orders", options)
        end
        
        def update_address(order_number, options={})
          put("orders/#{order_number}/address", options)
        end
        
        def set_shipping_method(order_number, shipping_method_id, options={})
          put("orders/#{order_number}", options.merge(:shipping_method_id => shipping_method_id))
        end
        
        def empty(order_number, options={})
          put("orders/#{order_number}/empty", options)
        end
      end
    end
  end
end
