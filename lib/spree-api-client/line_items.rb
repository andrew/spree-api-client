module Spree
  module API
    class Client
      module LineItems
        def create_line_item(order_id, options={})
          post("orders/#{order_id}/line_items/", options)
        end

        def update_line_item(order_id, line_item_id, options={})
          put("orders/#{order_id}/line_items/#{line_item_id}", options)
        end

        def delete_line_item(order_id, line_item_id, options={})
          delete("orders/#{order_id}/line_items/#{line_item_id}", options)
        end
      end
    end
  end
end
