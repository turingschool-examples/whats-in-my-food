require 'rails_helper'
# rspec spec/features/foods/index_spec.rb
RSpec.describe 'Food Search' do
  before :each do
    visit root_path
    fill_in 'q', with: "sweet potatoes"
    click_on 'Search'
  end

  it 'can get to searched results page successfully' do
    expect(page.status_code).to eq 200
    expect(current_path).to eq(foods_path)
  end

  it 'returns foods and total hits for searched ingredient' do
    expect(page).to have_content('Total Results: 47017')
    expect(page).to have_content('GTIN/UPC code: 076700002019')
    expect(page).to have_content('Description: SWEET POTATOES')
    expect(page).to have_content('Brand Owner: John W. Taylor Packing Co. Inc')
    expect(page).to have_content('Ingredients: SWEET POTATOES.')
  end

  it 'returns top ten foods with searched ingredient' do
  end
end
