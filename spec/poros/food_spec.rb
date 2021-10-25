require 'rails_helper'

describe Food do
  it 'has attributes' do
    VCR.use_cassette('food') do
      @food = FoodsFacade.search('sweet potato').first

      expect(@food.gtinUpc).to eq("819614010394")
      expect(@food.description).to eq("SWEET POTATO")
      expect(@food.brand_owner).to eq("Country Sweet Produce")
      expect(@food.ingredients).to be_an Array
    end
  end
end
