module Spree
  module API
    class Client
      module Payments
        def payments(order_id, options={})
          get("orders/#{order_id}/payments", options)['payments']
        end

        def payment(order_id, payment_id, options={})
          get("orders/#{order_id}/payments/#{payment_id}", options)
        end

        def new_payment(order_id, options={})
          get("orders/#{order_id}/payments/new", options)
        end

        def create_payment(order_id, options={})
          post("orders/#{order_id}/payments/", options)
        end

        def authorize_payment(order_id, payment_id, options={})
          put("orders/#{order_id}/payments/#{payment_id}/authorize", options)
        end

        def capture_payment(order_id, payment_id, options={})
          put("orders/#{order_id}/payments/#{payment_id}/capture", options)
        end

        def purchase_payment(order_id, payment_id, options={})
          put("orders/#{order_id}/payments/#{payment_id}/purchase", options)
        end
        
        def void_payment(order_id, payment_id, options={})
          put("orders/#{order_id}/payments/#{payment_id}.void", options)
        end
        
        def credit_payment(order_id, payment_id, options={})
          put("orders/#{order_id}/payments/#{payment_id}/credit", options)
        end
      end
    end
  end
end