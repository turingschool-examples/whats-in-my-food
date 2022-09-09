require 'rails_helper'

RSpec.describe 'Foods Search', :vcr do
  it 'can fill in the search form and see the total number of items returned by the search' do
    visit '/foods'

    expect(page).to have_content("Search Results for: sweet potatoes")
    expect(page).to have_content("Total Hits: 49676")

    expect(page).to have_content('GTIN/UPC Code: 8901020020844')
    expect(page).to have_content('Description: sweet potatoes')
    expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM')
    expect(page).to have_content('Ingredients: ORGANIC SWEET POTATOES.')

    expect(page).to_not have_content("Search Results for: potatoes")
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