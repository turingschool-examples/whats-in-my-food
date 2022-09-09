require 'rails_helper'

RSpec.describe FoodSearchFacade do
  it 'returns a list of foods' do
    foods = FoodSearchFacade.get_foods('sweet potato')

    foods.each do |food|
      expect(food).to be_a(Food)
    end
  end
end