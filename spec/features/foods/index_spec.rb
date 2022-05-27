require "rails_helper"

describe "Food search results page (index)" do
  before do
    visit '/'

    fill_in "q", with: "cheese"
    click_button "Search"
  end

  it "displays a list of foods", :vcr do
    expect(current_path).to eq('/foods')

    expect(page).to have_content("GTIN/UPC: 039674502084")
    expect(page).to have_content("Description: CHEESE")
    expect(page).to have_content("Brand Owner: American Pride Food Corp.")
    expect(page).to have_content("Ingredients: PARMESAN AND ROMANO CHEESE. MADE FROM PASTEURIZED COW'S AND SHEEP'S MILK, CULTURE, SALT, AND ENZYMES. MICROCELLULOSE ADDED TO PREVENT CAKING.")

    expect(page).to have_content("GTIN/UPC: 853910006170")
    expect(page).to have_content("Description: CHEESE")
    expect(page).to have_content("Ferndale Farmstead LLC")

    # expect(page).to have_content("Total number of results: 54526")
  end
end
