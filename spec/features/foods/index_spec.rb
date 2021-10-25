require 'rails_helper'

RSpec.describe 'foods index' do
  before :each do
    visit root_path
    fill_in(:q, with: "sweet potatoes")
    click_button "Search"
  end

  it 'has the total number of foods that contain that ingredient' do
    save_and_open_page
    expect(current_path).to eq(foods_path)
    expect(page).to have_content("foods that contain sweet potatoes")
  end

  it 'Shows information about ten food' do
    expect(page).to have_content("Ten Popular foods that contain sweet potatoes")
    expect(page).to have_content("GTIN/UPC Code:", count: 10)
    expect(page).to have_content("Description:", count: 10)
    expect(page).to have_content("Brand Owner:", count: 10)
    expect(page).to have_content("Ingredients:", count: 10)
  end
end
