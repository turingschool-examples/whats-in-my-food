require 'rails_helper'

RSpec.describe 'Food search' do
  describe 'happy path' do
    it 'see a list of TEN foods that contain the seached ingredient and their details' do
      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_on "Search"
      expect(current_path).to eq('/foods')
      expect(page.status_code).to eq 200
      expect(page).to have_content("44128 Results")
      expect(page).to have_content("492111402857")
      expect(page).to have_content("492111402857")
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
