require 'rails_helper'

RSpec.describe "Welcome Page" do
  it "has search", :vcr do
    visit '/'

    fill_in "q", with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq("/foods")
    expect(page).to have_content("Number of results: 49652")

    #first item
    expect(page).to have_content("GTIN/UPC: 8901020020844")
    expect(page).to have_content("Description: SWEET POTATOES")
    expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
    expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")

    #tenth item
    expect(page).to have_content("GTIN/UPC: 075450251951")
    expect(page).to have_content("Description: SWEET POTATO GNOCCHI, SWEET POTATO")
    expect(page).to have_content("Brand Owner: Hy-Vee, Inc.")
    expect(page).to have_content("Ingredients: REHYDRATED SWEET POTATOES (WATER, SWEET POTATO FLAKES), CORN FLOUR, POTATO STARCH, CORNSTARCH, RICE FLOUR, SALT, SWEET POTATO AROMA.")
  end
end