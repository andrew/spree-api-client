require 'spec_helper'

describe Spree::API::Client::Properties do
  describe 'properties' do
    it 'should load properties' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      properties = client.properties(1)
      properties.should be_a(Array)
    end
  end
end