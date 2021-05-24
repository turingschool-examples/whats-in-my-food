require 'rails_helper'

describe "As an authenticated user, when I visit the root path and fill in the search form with 'sweet potatoe' and click Search" do
  it "should should take me to the /foods page" do
    visit root_path

    fill_in "q", with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq(foods_path)
  end

  it "display the total number of results returned" do
    visit root_path

    fill_in "q", with: "sweet potatoes"
    click_button "Search"

    expect(page).to have_content("Total number of items returned: 33074")
  end

  it "display only the top 10 items with sweet potatoes as an ingredient" do
    visit root_path

    fill_in "q", with: "sweet potatoes"
    click_button "Search"

    expect(page.all('li', count: 40))
    expect(page).to have_content("INGREDIENTS: ")
  end

  it "displays GTIN/UPC, Brand Owner, and Description of food item" do
    visit root_path

    fill_in "q", with: "sweet potatoes"
    click_button "Search"

    expect(page).to have_content("Brand Owner: ARCHER FARMS")
    expect(page).to have_content("GTIN/UPC: 492111402857")
    expect(page).to have_content("Description: SWEET POTATOES")
  end
end
