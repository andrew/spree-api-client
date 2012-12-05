require 'faraday_middleware'
require "spree-api-client/version"

require 'spree-api-client/connection'
require 'spree-api-client/request'
require 'spree-api-client/products'

module Spree
  module API
    class Client
      include Spree::API::Client::Connection
      include Spree::API::Client::Request
      include Spree::API::Client::Products
      
      attr_accessor :api_endpoint, :api_token, :per_page
      def initialize(api_endpoint, api_token, options={})
        @api_endpoint = api_endpoint
        @api_token = api_token
        @per_page = options.fetch(:per_page, 30)
      end
    end
  end
end
