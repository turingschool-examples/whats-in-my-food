require 'rails_helper'

RSpec.describe 'food index page' do
  it 'returns list of 10 foods for search' do
    visit '/'
    fill_in :q, with: 'sweet potato'
    click_on 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Total foods found: 46320')
    expect(page).to have_content("GTIN/UPC: 819614010394")
    expect(page).to have_content("Brand: Country Sweet Produce")
    expect(page).to have_content("Description: SWEET POTATO")
    expect(page).to have_content("Ingredients: SWEET POTATOES")
  end
end
