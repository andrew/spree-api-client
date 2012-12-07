require 'spec_helper'

describe Spree::API::Client::Shipments do
  use_vcr_cassette "shipment_ready", :record => :new_episodes
  describe 'shipment_ready' do
    it 'should set a shipment to ready' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      shipment = client.shipment_ready(1, 1)
      shipment.should be_a(Hashie::Mash)
    end
  end
end
