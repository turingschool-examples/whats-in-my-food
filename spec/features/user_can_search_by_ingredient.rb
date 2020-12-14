require 'rails_helper'

describe 'user can search for food by ingredient' do
  it 'and see the results on the page' do

    visit root_path

    fill_in :q, with: "sweet potatoes"

    click_button "Search"

    expect(current_path).to eq("/foods")

    expect(page).to have_content("50 Results")
  end
end

# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
