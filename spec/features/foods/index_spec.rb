require 'rails_helper'

RSpec.describe 'Food Index' do 
  it 'shows the first 10 foods from the search' do 
    data = FoodFacade.search_foods('sweet potatoes')
    foods = data[:foods]
    result_count = data[:total_results]

    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content(foods.first.gtinUpc)
    expect(page).to have_content(foods.first.description)
    expect(page).to have_content(foods.first.brand_owner)
    expect(page).to have_content(foods.first.ingredients)
    expect(page).to have_content(result_count)
  end
end