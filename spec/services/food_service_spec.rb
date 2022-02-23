require 'rails_helper'

RSpec.describe 'Food Service' do 
  describe 'searches for food' do 
    it "description" do
      food_results = FoodService.search_foods('sweet potatoes')
      foods = food_results[:foods]
  
      expect(food_results[:totalHits]).to eq(48008)
      expect(foods).to be_a(Array)
      expect(foods.first).to have_key(:fdcId)
      expect(foods.first).to have_key(:description)
      expect(foods.first).to have_key(:brandOwner)
      expect(foods.first).to have_key(:ingredients)
    end
  end
end