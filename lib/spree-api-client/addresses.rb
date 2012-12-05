module Spree
  module API
    class Client
      module Addresses
        def address(id, options={})
          get("addresses/#{id}", options)
        end
        
        def update_address(id, options={})
          put("addresses/#{id}", options)
        end
      end
    end
  end
end
