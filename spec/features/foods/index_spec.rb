require 'rails_helper'

RSpec.describe 'foods index' do
  it "displays foods after search", :vcr do
    visit root_path
    fill_in 'q', with: 'Sweet Potato'
    click_on 'Search'
    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Count of Food: 48008')
    expect(page).to have_content('Description: SWEET POTATO')
    expect(page).to have_content('Brand Owner: Country Sweet Produce')
    expect(page).to have_content('Ingredients: ')
    expect(page).to have_content('GTIN/UPC: 819614010394')
  end
end
