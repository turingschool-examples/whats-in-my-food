require 'rails_helper'

RSpec.describe "as a user" do
  describe "when i visit the /" do
    it "fills in sweet potatoes in the form and clicks search" do

      visit root_path

      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'
      expect(current_path).to eq('/foods')
      expect(page).to have_content('Total search results: 40788')
      save_and_open_page
      within(first(".results")) do
        expect(page).to have_content("GTIN/UPC code: 492111402857")
        expect(page).to have_content("Description: SWEET POTATOES")
        expect(page).to have_content("Brand Owner: ARCHER FARMS")
        expect(page).to have_content("Ingredients: SWEET POTATOES.")
      end
    end
  end
end
