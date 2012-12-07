require 'spec_helper'

describe Spree::API::Client::Countries do
  use_vcr_cassette "countries", :record => :new_episodes
  describe 'countries' do
    it 'should load countries' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      countries = client.countries
      countries.should be_a(Array)
    end
  end
end
