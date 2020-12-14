require 'rails_helper'

RSpec.describe 'As a User' do
  describe 'I select sweet potatoes and click search' do
    it 'can see results on the page' do
      # When I visit "/"
      visit root_path
      # And I fill in the search form with "sweet potatoes"
      fill_in :search_field, with: 'sweet potatoes'
      # (Note: Use the existing search form)
      # And I click "Search"
      click_button 'Search'
      # Then I should be on page "/foods"
      expect(current_path).to eq(foods_path)
      # Then I should see a total of the number of items returned by the search.
      expect(page).to have_content('Total number of Items with sweet potatoes: 20')
      # Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
      within(first('.item')) do
      # And for each of the foods I should see:
      # - The food's GTIN/UPC code
        expect(page).to have_css('.code')
      # - The food's description
        expect(page).to have_css('.description')
      # - The food's Brand Owner
        expect(page).to have_css('.brand_owner')
      # - The food's ingredients
        expect(page).to have_css('.ingredients')
      end
    end
  end
end
