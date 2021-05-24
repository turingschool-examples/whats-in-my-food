require 'rails_helper'

RSpec.describe 'search', type: :feature do
  describe 'I can select nations to view their members' do
    it "I can select Fire Nation and can see the associated information " do 
      visit root_path

      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq(foods_path)


      expect(page).to have_content("Searched item count: 44128")

      expect(page).to have_css('.food_information', count: 10)


      within(first('.food_information')) do
        expect(page).to have_css('.gtin_upc_code')
        expect(page).to have_css('.description')
        expect(page).to have_css('.brand_owner')
        expect(page).to have_css('.ingredients')
      end
    end
  end
end