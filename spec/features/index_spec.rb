require 'rails_helper'

RSpec.describe 'Foods Index' do
  it 'displays a list of 10 foods based on search' do
    foods = FoodFacade.search_by_food("sweet potatoes")
    total = FoodFacade.total_count("sweet potatoes")
    visit '/'
    fill_in :q, with: "sweet potatoes"
    click_on "Search"
    save_and_open_page
    expect(current_path).to eq("/foods")
    expect(page).to have_content(total)
    foods.each do |food|
      expect(page).to have_content(food.upc_code)
      expect(page).to have_content(food.description)
      expect(page).to have_content(food.brand_owner)

        expect(page).to have_content(food.ingredients)
    end
  end
end
