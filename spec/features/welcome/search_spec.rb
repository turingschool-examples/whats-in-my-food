require 'rails_helper'

RSpec.describe "Search" do
  it "can search an item", :vcr do
    visit '/'

    fill_in 'q', with: 'sweet potatoes'

    click_on "Search"

    expect(current_path).to eq('/foods')
    expect(page).to have_content("Search Matches: 49676")
    expect(page).to have_content("GTIN/UPC: 8901020020844")
    expect(page).to have_content("Description: SWEET POTATOES")
    expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
    expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")
  end

end
