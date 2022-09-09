require 'rails_helper'

RSpec.describe 'food search page' do
   it 'see a total of the number of items returned by the search' do
      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_on "Search"

      expect(current_path).to eq(foods_path)
      expect(page).to have_content("Total number of items found: 10")
   end

   it 'shows the foods attributes' do
      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_on "Search"

      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("GTIN/UPC Code: 8901020020844")
      expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")
   end
end