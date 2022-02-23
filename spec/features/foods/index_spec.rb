require 'rails_helper'

RSpec.describe 'foods index' do
  it "displays foods after search", :vcr do
    visit root_path
    fill_in 'q', with: 'Sweet Potato'
    click_on 'Search'
    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Count of Food: 48008')
    expect(page).to have_content('GTIN/UPC: 832298010009')
    expect(page).to have_content('Description: SWEET POTATOES')
    expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM ')
    expect(page).to have_content('Ingredients: ')
  end
end
