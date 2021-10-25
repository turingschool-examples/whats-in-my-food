require 'rails_helper'
RSpec.describe 'foods page' do
  before :each do
    VCR.use_cassette('search-1') do
      visit "/"
      fill_in :q, with: 'sweet potato'
      click_on 'Search'
    end
  end
  it 'shows the total number of hits for a search' do
    VCR.use_cassette('search-1') do
      expect(page).to have_content("46320")
    end
  end

  it 'shows the description of each food result' do
    VCR.use_cassette('search-1') do
      expect(page).to have_content("SWEET POTATO")
    end
  end

  it 'shows the ingredients of each food result' do
    VCR.use_cassette('search-1') do
      expect(page).to have_content("Calcium")
    end
  end

  it 'shows the brand_owner of each food result' do
    VCR.use_cassette('search-1') do
      expect(page).to have_content("Country Sweet Produce")
    end
  end

  it 'shows the GTIN/UPC of each food result' do
    VCR.use_cassette('search-1') do
      expect(page).to have_content("819614010394")
    end
  end
end
