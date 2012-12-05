module Spree
  module API
    class Client
      module Countries
        def countries(options={})
          get("countries", options)['countries']
        end

        def country(id, options={})
          get("countries/#{id}", options)
        end
      end
    end
  end
end
