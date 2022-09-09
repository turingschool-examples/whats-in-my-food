require 'rails_helper'

RSpec.describe FoodService do
  describe '::get_food_search', :vcr do
    it 'gets data for food names that match a keyword(s)' do
      response = FoodService.get_food_search('sweet potatoes')
      
      expect(response[:totalHits]).to be > 30000
      expect(response[:foodSearchCriteria]).to have_key(:query)
      expect(response[:foods]).to be_an(Array)
      expect(response[:foods][0][:lowercaseDescription]).to eq('sweet potatoes')
    end
  end
end