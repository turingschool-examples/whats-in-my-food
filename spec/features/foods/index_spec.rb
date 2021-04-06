require 'rails_helper'

RSpec.describe "as a user" do
  describe "when i visit the /" do
    it "fills in sweet potatoes in the form and clicks search" do
      visit root_path

      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'
      expect(current_path).to eq(foods_index_path)
      expect(page).to have_content('total search results')
      within('.results') do
        #expect 10 results
      end

      within('.results first') do
        expect(page).to have_content("GTIN/UPC code")
        expect(page).to have_content("Description")
        expect(page).to have_content("Brand Owner")
        expect(page).to have_content("Ingredients")
      end
    end
  end
end
