require 'rubygems'
require 'bundler/setup'
require 'spree-api-client'
require 'rspec'
require 'webmock/rspec'
require 'support/vcr'

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end
