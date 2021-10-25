require 'rails_helper'

RSpec.describe FoodFacade do
  it 'returns a list of foods by search' do
    foods = FoodFacade.food_search('sweet potato')
    binding.pry
  end
end
