require 'rails_helper'

describe 'Foods Index Page' do
  let(:foods) do
    [
      FoodPoro.new({ gtinUpc: 123, lowercaseDescription: 'hello', brandOwner: 'world', ingredients: 'chicken, noodles' }),
      FoodPoro.new({ gtinUpc: 456, lowercaseDescription: 'yellow', brandOwner: 'mito', ingredients: 'peas, elephant' }),
      FoodPoro.new({ gtinUpc: 789, lowercaseDescription: 'orange', brandOwner: nil, ingredients: 'hippo, broccoli' })
    ]
  end

  before :each do
    allow(FoodFacade).to receive(:search).and_return(foods)

    visit foods_path
  end

  it 'has all the food info' do
    foods.each do |food|
      expect(page).to have_content(food.upc_code)
      expect(page).to have_content(food.description)

      if food == foods.last
        expect(page).to have_content('Not Given')
      else
        expect(page).to have_content(food.brand_owner)
      end

      food.ingredients.each { |i| expect(page).to have_content(i) }
    end
  end
end
