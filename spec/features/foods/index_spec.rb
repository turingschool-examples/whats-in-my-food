require 'rails_helper'

RSpec.describe 'food index page' do

  describe 'when a user visits the food index path', :vcr do
      it 'shows total foods and food attributes' do

      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq(foods_path)
      expect(page).to have_content('Total number of items:')

      expect(page).to have_content("070560951975")
      expect(page).to have_content("The Pictsweet Company")
      expect(page).to have_content("NOT A BRANDED ITEM")
      expect(page).to have_content("ORGANIC CORN STARCH AND LESS THAN 2% SILICON DIOXIDE")
    end
  end
end
