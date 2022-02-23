require 'rails_helper'

RSpec.describe "Food Facade" do
  context 'given a search term, provides' do
    it '.total_hits' do
      total = FoodFacade.total_hits('sweet potatoes')
      expect(total).to be_an Integer
    end

    it '.foods_containing_ingredient' do
      foods = FoodFacade.foods_containing_ingredient('sweet potatoes')

      expect(foods).to be_an Array
      expect(foods.first).to be_a Food
    end
  end
end
