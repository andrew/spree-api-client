module Spree
  module API
    class Client
      module Payments
        def payments(order_number, options={})
          get("orders/#{order_number}/payments", options)['payments']
        end

        def payment(order_number, payment_id, options={})
          get("orders/#{order_number}/payments/#{payment_id}", options)
        end

        def new_payment(order_number, options={})
          get("orders/#{order_number}/payments/new", options)
        end

        def create_payment(order_number, options={})
          post("orders/#{order_number}/payments/", options)
        end

        def authorize_payment(order_number, payment_id, options={})
          put("orders/#{order_number}/payments/#{payment_id}/authorize", options)
        end

        def capture_payment(order_number, payment_id, options={})
          put("orders/#{order_number}/payments/#{payment_id}/capture", options)
        end

        def purchase_payment(order_number, payment_id, options={})
          put("orders/#{order_number}/payments/#{payment_id}/purchase", options)
        end
        
        def void_payment(order_number, payment_id, options={})
          put("orders/#{order_number}/payments/#{payment_id}.void", options)
        end
        
        def credit_payment(order_number, payment_id, options={})
          put("orders/#{order_number}/payments/#{payment_id}/credit", options)
        end
      end
    end
  end
end