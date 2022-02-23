require 'rails_helper'

RSpec.describe 'Landing Page' do

  before(:each) do
    visit '/'
  end

  it 'contains search field and button' do
    expect(page).to have_field(:search_query)
    expect(page).to have_button("Search")
  end

  it 'takes you to correct path after performing a search' do
    fill_in :search_query, with: 'something'
    click_on "Search"

    expect(current_path).to eq('/foods')
  end

  it 'it displays a total of the number of items returned by the search' do
    fill_in :search_query, with: 'sweet potatoes'
    click_on "Search"

    expect(page).to have_content("Search Results: 46770")
  end

  it 'should display 10 foods that contain the ingredient sweet potatoes' do
    fill_in :search_query, with: 'sweet potatoes'
    click_on "Search"

    expect(page).to have_content("Food's that contain sweet potatoes:")
    save_and_open_page
    expect(page).to have_content("GTIN/UPC: 099482459734")
    expect(page).to have_content("Description: SWEET POTATOES, ORANGE & YELLOW CARROTS, PARSNIPS, RED ONIONS ROOT VEGETABLES")
    expect(page).to have_content("Brand Owner: Whole Foods Market, Inc.")
    expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES, ORGANIC ORANGE CARROTS, ORGANIC YELLOW CARROTS, ORGANIC PARSNIPS, ORGANIC RED ONIONS.")
  end

end
