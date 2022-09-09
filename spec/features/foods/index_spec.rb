require "rails_helper"

RSpec.describe "The Foods Index Page" do
  it "shows a list of the ten most relevant foods returned by a search", :vcr do
    visit root_path

    fill_in "q", with: "Cheddar Cheese" 

    click_button "Search"

    expect(page).to have_content '54739 Results for search: "Cheddar Cheese"'
    expect(page).to have_content 'Showing the 10 most relevant results'

    within '#gtin-upc-041497083411-info' do
      expect(page).to have_content 'GTIN/UPC Code: 041497083411'
      expect(page).to have_content 'Brand Owner: Weis Markets, Inc.'
      expect(page).to have_content 'Description: cheddar cheese'
      expect(page).to_not have_content 'Ingredients: CHEDDAR CHEESE (PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES, ANNATTO COLOR), POTATO STARCH, STARCH AND CELLULOSE POWDER TO PREVENT CAKING, NATAMYCIN (MOLD INHIBITOR).'
    end

    expect(page).to_not have_content 'Results for search: "Potatoes"'
  end
end