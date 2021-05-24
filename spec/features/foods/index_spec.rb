require 'rails_helper'

RSpec.describe 'Foods Index (search results)' do
  describe 'happy path' do
    it 'user sees search results for food' do
      visit root_path

      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'

      expect(current_path).to eq(foods_path)
      require 'pry'; binding.pry
      expect(page.status_code).to eq 200
      expect(page).to have_content("Total items returned: 44128")
      expect(page).to have_content("GTIN/UPC code:")
      expect(page).to have_content("Description:")
      expect(page).to have_content("Brand Owner:")
      expect(page).to have_content("Ingredients:")
    end
  end
end