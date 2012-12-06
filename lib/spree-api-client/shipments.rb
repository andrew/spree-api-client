module Spree
  module API
    class Client
      module Shipments
        def shipment_ready(order_number, shipment_id, options={})
          put("orders/#{order_number}/shipments/#{shipment_id}/ready", options)
        end

        def ship_shipment(order_number, shipment_id, options={})
          put("orders/#{order_number}/shipments/#{shipment_id}/ship", options)
        end
      end
    end
  end
end
