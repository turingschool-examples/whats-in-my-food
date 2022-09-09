require 'rails_helper'

RSpec.describe 'Food Facade' do
   it 'get_food_search' do
      search = FoodFacade.new
      search_results = search.get_food_search("sweet potatoes")

      expect(search_results).to be_a(Array)
   end
end