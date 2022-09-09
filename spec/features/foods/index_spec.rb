require 'rails_helper'

RSpec.describe 'Foods Index Page', :vcr do
  before do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
  end

  it "shows the total number of items returned by the search" do
    expect(page).to have_content("Total Results: 49676")
  end

  it "shows the ten foods that contain the ingredient searched for" do
    expect(page).to have_css('.food', count: 10)
  end

  it "shows the food's GTIN/UPC code" do
    expect(page).to have_content("GTIN/UPC: 8901020020844")
  end

  it "shows the food's description" do
    expect(page).to have_content("SWEET POTATOES")
  end

  it "shows the food's Brand Owner" do
    expect(page).to have_content("ARCHER FARMS")
  end

  it "shows the food's ingredients" do
    expect(page).to have_content("SWEET POTATOES")
  end
end
