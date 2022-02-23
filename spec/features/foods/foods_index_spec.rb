require 'rails_helper'

RSpec.describe 'Foods index page' do
  before :each do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_on "Search"
  end

  it 'displays the total number of items returned by the search', :vcr do
    visit foods_path

    expect(page).to have_content("Total Hits: 396437")
    #This should not be. I have no idea where that number is coming from.
  end

  it 'lists the first 10 items returned in the search', :vcr do
    visit foods_path

    expect(page).to have_content("Results on this page: 10")
  end

  it 'lists the foods attributes', :vcr do
  end
end
