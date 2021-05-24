require 'rails_helper'

RSpec.describe 'foods', type: :feature do
  describe 'I can input food query to view returned results' do
    it "I can input 'sweet potatoes and can see the associated information " do 
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

    it "I am prompted to enter a valid search if no search is submitted" do 
      visit root_path

      fill_in :q, with: ""
      click_button "Search"

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Please input a food item to search!")
    end
  end
end