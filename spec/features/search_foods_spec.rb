require 'rails_helper'
RSpec.describe 'Food search' do
  describe 'happy path' do
    it 'allows user to search for foods', :vcr do

      visit root_path

      fill_in :q, with: 'Sweet Potato'

      click_button "Search"

      expect(page.status_code).to eq 200

      expect(page).to have_content("Total Number of items returned by search: 46770")
      expect(page).to have_content("GTIN/UPC: 819614010394")
      expect(page).to have_content("Brand Owner: Country Sweet Produce")
      expect(page).to have_content("Ingredients: SWEET POTATOES")
    end

    it 'has sad path for empty search' do

      visit root_path

      click_button "Search"

      expect(page.status_code).to eq 200

      expect(current_path).to eq(root_path)
    end
  end
end
