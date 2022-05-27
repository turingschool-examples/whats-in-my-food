require 'rails_helper'

RSpec.describe 'Welcome page' do
before(:each) do
  visit '/'
  fill_in 'q', with: 'cheese'
  click_on 'Search'
end
  # As a user,
  #  When I visit "/"
  #  And I fill in the search form with "sweet potatoes"
  #  (Note: Use the existing search form)
  #  And I click "Search"
  #  Then I should be on page "/foods"

  #  Then I should see a total of the number of items returned by the search.
  #  (sweet potatoes should find more than 30,000 results)

  #  Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
  # And for each of the foods I should see:
  #  - The food's GTIN/UPC code
  #  - The food's description
  #  - The food's Brand Owner
  #  - The food's ingredients
  it 'allows the user to search for food items based on ingredient queries' do
    expect(current_path).to eq('/foods')
  end

  it 'displays the total results from the query' do
    expect(page).to have_content('Total results: 54526')
  end

  it 'displays a list of 10 foods from the results of the query' do
    expect(page).to have_content('039674502084')
    expect(page).to have_content('853910006170')
    expect(page).to have_content('217260803726')
    expect(page).to have_content('011863118740')
    expect(page).to have_content('011863120569')
    expect(page).to have_content('073296480078')
    expect(page).to have_content('688267173844')
    expect(page).to have_content('850276005014')
    expect(page).to have_content('852230003326')
    expect(page).to have_content('819753000683')
  end

  it 'displays the food item information from the query' do
    expect(page).to have_content("039674502084")
    expect(page).to have_content("CHEESE")
    expect(page).to have_content("American Pride Food Corp.")
    expect(page).to have_content("PARMESAN AND ROMANO CHEESE. MADE FROM PASTEURIZED COW'S AND SHEEP'S MILK, CULTURE, SALT, AND ENZYMES. MICROCELLULOSE ADDED TO PREVENT CAKING.")
  end
end
