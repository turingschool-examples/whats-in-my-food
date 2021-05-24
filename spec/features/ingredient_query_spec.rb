require 'rails_helper'

RSpec.describe 'Query FoodData Central with one ingredient' do
  before :each do
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'
  end
  describe 'Get 10 most relevant foods that include the ingredient' do
    it 'Redirects to the foods path to show search results' do

      expect(current_path).to eq('/foods')
      # (sweet potatoes should find more than 30,000 results)
      expect(page).to have_content('Total search results: 44128')
    end

    it 'Foods path displays TEN foods containing queried ingredient' do

      expect(page).to have_content('TEN food that contain')
      # test that there are only 10
    end

    it 'For each food item: GTIN/UPC code, description, Brand Owner, ingredients' do
      within '.ten-foods' do
        expect(page).to have_content('GTIN/UPC code:')
        expect(page).to have_content('Description:')
        expect(page).to have_content('Brand Owner:')
        expect(page).to have_content('Ingredients:')
      end
    end
  end
end
