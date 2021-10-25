require 'rails_helper'

describe 'foods index' do
  before :each do
    visit root_path
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
    @foods = FoodFacade.find_foods('sweet potatoes')
  end


  it 'shows total number of items returned' do
    expect(current_path).to eq(foods_path)
    expect(page).to have_content("Total Results: #{@foods.first.total_hits}")
  end

  it 'shows 10 results' do
    @foods[0..9].each do |food|
      expect(page).to have_content(food.gtin_upc)
      expect(page).to have_content(food.description)
      expect(page).to have_content(food.brand_owner)
      expect(page).to have_content(food.ingredients)
    end

    expect(page).to_not have_content(@foods[10].gtin_upc)
  end
end
