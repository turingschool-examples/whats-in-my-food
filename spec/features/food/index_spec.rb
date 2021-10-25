require 'rails_helper'

RSpec.describe 'Food Search Results' do
  before :each do
    visit root_path
  end

  describe 'form to search food' do
    it 'has a form to search food' do
      expect(page).to have_field(:q)
      expect(page).to have_button("Search")
    end

    it 'searches for food' do
      fill_in :q, with: 'sweet potatoes'
      click_button "Search"

      expect(current_path).to eq(foods_path)
      expect(page).to have_content('Search Results')
    end
  end

  describe 'foods index page' do
    it 'returns 10 results' do
      fill_in :q, with: 'sweet potatoes'
      click_button "Search"
      results = FoodFacade.total_results('sweet potato')
      foods = FoodFacade.search_results('sweet potato')
      food = foods.first
      
      expect(page.status_code).to eq 200
      expect(page).to have_content(results)
      expect(foods.size).to eq(10)
      expect(page).to have_content(food.description)
    end
  end
end
