require 'rails_helper' 

RSpec.describe 'Food Show Page' do 
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
  it 'displays the total number of items returned by the search' do 
    visit root_path 

    fill_in :q, :with => 'sweet potatoes'

    click_on 'Search' 

    expect(current_path).to eq foods_path 
    expect(page).to have_content "Total Hits: 49676"
  end

  it 'displays 10 foods that match the search' do 
    visit root_path 

    fill_in :q, :with => 'sweet potatoes'

    click_on 'Search' 
    save_and_open_page

    expect(page).to have_content("Top 10 Matches")
    expect(page).to have_content("Food Description", count: 10)
    expect(page).to have_content("GTIN/UPC Code", count: 10)
    expect(page).to have_content("Brand Owner", count: 10)
    expect(page).to have_content("Ingredients", count: 10)
  end
end