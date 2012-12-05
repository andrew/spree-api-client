require 'spec_helper'

describe Spree::API::Client::Taxons do
  describe 'taxons' do
    it 'should load taxons' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      taxons = client.taxons(1)
      taxons.should be_a(Array)
    end
  end
end
