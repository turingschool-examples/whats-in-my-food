require 'rails_helper'

RSpec.describe 'food index page' do

  describe 'when a user visits the food index path', :vcr do
      it 'shows total foods and food attributes' do

      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq(foods_path)
      expect(page).to have_content('Total number of items:')

      expect(page).to have_content("832298010009")
      expect(page).to have_content("C.H. Robinson Company
")
      expect(page).to have_content("NOT A BRANDED ITEM")
      expect(page).to have_content("Spring Acres Sales Company Inc.")
    end
  end
end
