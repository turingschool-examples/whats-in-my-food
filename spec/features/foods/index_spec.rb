require "rails_helper"

# As a user,
# When I visit "/" x
# And I fill in the search form with "sweet potatoes" x
# (Note: Use the existing search form) x
# And I click "Search" x
# Then I should be on page "/foods" x
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
RSpec.describe "Foods Index Page" do
  describe 'when I search for a food' do
    it 'can redirect to foods path' do
      visit root_path

      fill_in :search_params, with: "sweet potatoes"

      click_on "Search"

      expect(current_path).to eq(foods_path)
    end

    xit 'can display the total number of items returned by a search given a valid parameter' do
      expect(page).to have_content(Integer)
    end
  end
end
