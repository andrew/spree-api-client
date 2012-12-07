require 'spec_helper'

describe Spree::API::Client::Products do
  use_vcr_cassette "products", :record => :new_episodes
  describe 'products' do
    it 'should load products' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      products = client.products
      products.should be_a(Array)
    end
  end
end