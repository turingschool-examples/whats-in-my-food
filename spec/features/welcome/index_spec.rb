require 'rails_helper'

RSpec.describe 'foods index' do
  before(:each) do
    visit root_path
    fill_in(:q, with: "sweet potatoes")
    click_button "Search"
  end

  it 'has the total number of foods that contain that ingredient' do
    expect(current_path).to eq(foods_path)
    expect(page).to have_content("foods that contain sweet potatoes")
  end

  it 'shows information about ten foods' do
    expect(page).to have_content("Ten foods containing sweet potatoes")
    expect(page).to have_content("GTIN/UPC Code:")
    expect(page).to have_content("Description:")
    expect(page).to have_content("Brand Owner:")
    expect(page).to have_content("Ingredients:")
  end
end


# As a user,
# xxxx When I visit "/"
# xxxx And I fill in the search form with "sweet potatoes"
# xxxx (Note: Use the existing search form)
# xxxx And I click "Search"
# xxxx Then I should be on page "/foods"
#  Then I should see a total of the number of items returned by the search.
#  (sweet potatoes should find more than 30,000 results)
#  Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
#  - The food's GTIN/UPC code
#  - The food's description
#  - The food's Brand Owner
#  - The food's ingredients
