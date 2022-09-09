require 'rails_helper'

RSpec.describe 'Foods index page' do

  it "fills the form with a search shows the total number of foods containing the search" do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'

    expect(current_path).to eq(foods_path)

    expect(page).to have_content('Total Foods: 49676')
  end

  it "shows the first 10 foods that have the searched ingredient" do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'

    expect(current_path).to eq(foods_path)

    expect(page).to have_content('GTIN/UPC code:')
    expect(page).to have_content('Description:')
    expect(page).to have_content('Brand Owner:')
    expect(page).to have_content('Ingredients:')
  end

end
