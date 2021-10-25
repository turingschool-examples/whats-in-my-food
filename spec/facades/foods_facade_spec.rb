require 'rails_helper'

describe FoodsFacade do
  it 'creates food objects from search function' do
    VCR.use_cassette('foods') do
      first_result = FoodsFacade.search('sweet potatoes').first

      expect(first_result).to be_a Food 
    end
  end
end
