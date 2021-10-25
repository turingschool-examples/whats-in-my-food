require 'rails_helper'

describe FoodsService do
  it 'can get the first 10 results of a keyword search' do
    VCR.use_cassette("foods") do
      response = FoodsService.food_search('sweet potatoes')

      expect(response).to be_an Array
      expect(response[0]).to be_a Hash

      expect(response[0]).to have_key :gtinUpc
      expect(response[0]).to have_key :description
      expect(response[0]).to have_key :brandOwner
      expect(response[0]).to have_key :foodNutrients
    end
  end
end
