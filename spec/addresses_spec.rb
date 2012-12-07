require 'spec_helper'

describe Spree::API::Client::Addresses do
  use_vcr_cassette "addresss", :record => :new_episodes
  describe 'address' do
    it 'should load address' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      address = client.address(1)
      address.should be_a(Hashie::Mash)
    end
  end
end
