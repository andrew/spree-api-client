module Spree
  module API
    class Client
      module Connection
        def connection(options={})
          options = {
            :authenticate     => true,
            :force_urlencoded => false,
            :raw              => false,
            :ssl              => { :verify => false },
            :url              => api_endpoint,
            :path_prefix      => '/api'
          }.merge(options)

          connection = Faraday.new(options) do |builder|
            builder.request :json

            builder.use FaradayMiddleware::FollowRedirects
            builder.use FaradayMiddleware::Mashify
            builder.use Faraday::Response::RaiseError

            builder.use FaradayMiddleware::ParseJson, :content_type => /\bjson$/

            builder.adapter  Faraday.default_adapter
          end
          connection
        end
      end
    end
  end
end
