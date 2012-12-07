require 'spec_helper'

describe Spree::API::Client::ReturnAuthorizations do
  use_vcr_cassette "return_authorizations", :record => :new_episodes
  describe 'return_authorizations' do
    it 'should load return_authorizations' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      return_authorizations = client.return_authorizations('R781501551')
      return_authorizations.should be_a(Array)
    end
  end
end