require 'spec_helper'

describe Spree::API::Client::Payments do
  describe 'payments' do
    it 'should load payments' do
      client = Spree::API::Client.new('http://localhost:4000/store/api', 'b56019f04b61a50553ee323f5ab68c6b435871971e79c987')
      payments = client.payments('R610162112')
      payments.should be_a(Array)
    end
  end
end
