require 'rails_helper'

RSpec.describe 'foods search result page' do
  before(:each) do
    visit root_path
    fill_in 'q', with: 'sweet potatoes'
    VCR.insert_cassette('sweet_potato_search')
    click_button('Search')
  end
  after(:each) do
    VCR.eject_cassette('sweet_potato_search')
  end

  it 'shows total number of items returned by search' do
    expect(page).to have_content("Total Results: 48008")
  end

  it 'shows 10 result foods on page' do
    expect(page).to have_css("section", count: 10)
  end

  it 'shows a food gtin/upc' do
    within("#food-result-1") do
      expect(page).to have_content("819614010394")
    end
  end

  it 'shows a food description' do
    within("#food-result-1") do
      expect(page).to have_content("SWEET POTATO")
    end
  end

  it 'shows a food brand owner' do
    within("#food-result-1") do
      expect(page).to have_content("Country Sweet Produce")
    end
  end

  it 'shows a food ingredients' do
    within("#food-results-1") do
      expect(page).to have_content("SWEET POTATOES")
    end
  end
end 
