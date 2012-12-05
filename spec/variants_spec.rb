require 'spec_helper'

describe Spree::API::Client::Variants do
  describe 'variants' do
    it 'should load variants' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      variants = client.variants(1)
      variants.should be_a(Array)
    end
  end
end