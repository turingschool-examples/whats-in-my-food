require 'rails_helper'

RSpec.describe 'Foods index page' do
  before :each do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_on "Search"
  end

  it 'displays the total number of items returned by the search', :vcr do
    visit foods_path

    expect(page).to have_content("Total Hits: 48008")
  end

  it 'lists the first 10 items returned in the search', :vcr do
  end

  it 'lists the foods attributes', :vcr do
  end
end
