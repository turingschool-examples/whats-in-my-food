require 'rails_helper'

RSpec.describe FoodFacade do
  describe 'class methods' do
    it '.food_details' do
      search_term = 'sweet potatoes'
      results = FoodFacade.food_details(search_term)
    
      expect(results).to be_a Array
      expect(results[0]).to be_a Food
    end
  end
end
