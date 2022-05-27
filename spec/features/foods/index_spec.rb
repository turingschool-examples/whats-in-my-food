require 'rails_helper'

RSpec.describe "Food index", type: :feature do

  it 'displays searched foods' do
    visit root_path
    fill_in(:q, with: "sweet potatoes")
    click_button "Search"

    expect(current_path).to eq("/foods")

    expect(page).to have_content("Name")
    expect(page).to have_content("Brand Owner")
    expect(page).to have_content("GTIN UPC")
    expect(page).to have_content("Ingredients")
  end

end
