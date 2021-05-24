require 'rails_helper'
RSpec.describe 'As a user' do
  describe 'When I visit "/"' do
    it 'And I fill  search form with "sweet potatoes" and click search, and I am redirected to /foods' do
      visit root_path

      fill_in "sweet potatoes", from: :q
      click_button 'Search'
      expect(current_path).to eq(search_path)
    end

    it ' should see a total of the number of items returned by the search (more than 30,000 results)' do
    end

    it 'I should see a list of TEN foods that contain the ingredient "sweet potatoes"' do
    end

    it 'And for each of the foods I should see:' do
      visit foods_path
      within(first(".foods")) do
        expect(page).to have_content("GTIN/UPC code: ")
        expect(page).to have_css(".code")
        expect(page).to have_content("Description: ")
        expect(page).to have_css(".description")
        expect(page).to have_content("Brand Owner: ")
        expect(page).to have_css(".brand_owner")
        expect(page).to have_content("Ingredients: ")
        expect(page).to have_css(".ingredient")
      end
    end
  end
end



    # As a user,
    # When I visit "/"
    # And I fill in the search form with "sweet potatoes"
    # (Note: Use the existing search form)
    # And I click "Search"
    # Then I should be on page "/foods"
    # Then I should see a total of the number of items returned by the search.
    # (sweet potatoes should find more than 30,000 results)
    # Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
    # And for each of the foods I should see:
    # - The food's GTIN/UPC code
    # - The food's description
    # - The food's Brand Owner
    # - The food's ingredients
