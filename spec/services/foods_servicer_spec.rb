require 'rails_helper'

RSpec.describe FoodsServicer, type: :service do
  let(:foods_servicer) { FoodsServicer.new }
  describe 'initialize' do
    it 'exists' do
      actual = foods_servicer
      expected = FoodsServicer
      expect(actual).to be_a(expected)
    end
  end
  describe 'attributes' do
    it 'has a client' do
      actual = foods_servicer.client

      expected = FoodsClient
      expect(actual).to eq(expected)
    end
  end
  describe '#search' do
    it 'searches using the client and returns a food' do
      VCR.use_cassette('sweet_potatoes') do
        potatoes = foods_servicer.search('sweet potatoes')
        actual = potatoes.first
        expected = Food
        expect(actual).to be_a(expected)
      end
    end
  end
  describe 'get_total_hits(food)' do
    it 'returns the total hits for a food search' do
      VCR.use_cassette('sweet_potatoes_results') do
        actual = foods_servicer.get_total_hits('sweet potatoes')
        expected = 48_008

        expect(actual).to eq(expected)
      end
    end
  end
end
