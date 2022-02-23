require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  describe 'view' do
    it 'Fills in the search form' do
      visit root_path

      fill_in :q, with: 'sweet potatoes'

      click_button 'Search'

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("Total Results: 10")
      expect(page).to have_content("GTIN/UPC code: 983525")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand Owner:")
      expect(page).to have_content("Ingredients:")
    end
  end
end
