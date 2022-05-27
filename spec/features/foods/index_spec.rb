require 'rails_helper'

RSpec.describe 'Foods index' do
  before :each do
    visit root_path
    fill_in :q, with: 'sweet potatoes'
    click_on "Search"
  end

  it 'displays total results count' do
    expect(page).to have_content('Total Results Count: 49652')
  end

  it 'shows food gtinUpc, description, brand owner, and ingredients for search results by ingredient' do
    expect(page).to have_content('Brand Owner: John W. Taylor Packing Co. Inc')
    expect(page).to have_content('Description: SWEET POTATOES')
    expect(page).to have_content('GTIN/UPC Code: 076700002019')
    expect(page).to have_content('Ingredients: ORGANIC SWEET POTATOES')
  end
end
