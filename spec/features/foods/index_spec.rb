require 'rails_helper'

RSpec.describe 'Foods index page' do

  it 'displays the total number of items returned by the search', :vcr do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq('/foods')
    expect(page).to have_content("Total Hits: 49676")
  end

  it 'lists the first 10 items returned in the search', :vcr do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq('/foods')
    expect(page).to have_content("Results on this page: 10")
  end

  it 'lists the foods attributes', :vcr do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq('/foods')
    expect(page).to have_content("Description: SWEET POTATOES")
    expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
    expect(page).to have_content("GTIN/UPC code: 8901020020844")
    expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")
  end

end
