require 'rails_helper'

RSpec.describe 'Movie Service' do
  it 'returns foods based on a search' do
    foods = FoodService.search_food('sweet potatoes')
    binding.pry
    expect(foods).to be_an(Array)
  end
end
