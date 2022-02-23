require 'rails_helper'

describe 'foods index' do
  it 'displays list of foods from search' do
    visit root_path
    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Brand Owner', count: 10)
    expect(page).to have_content('GTIN/UPC Code:', count: 10)
    expect(page).to have_content('Ingredients:', count: 10)
    expect(page).to have_content('Search Results')
    expect(page).to have_content('Total Number of Results:')
    expect(page).to have_content('Top 10 Matches:')
  end
end

