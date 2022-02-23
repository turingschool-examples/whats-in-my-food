require 'rails_helper'

RSpec.describe 'Movie Service' do
  it 'returns foods based on a search' do
    foods = FoodService.search_food('sweet potatoes')
    expect(foods[:foods]).to be_an(Array)
    expect(foods[:totalHits]).to be(48008)
  end
end
