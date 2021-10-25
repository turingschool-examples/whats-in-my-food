require 'rails_helper'

RSpec.describe "Foods Index Page" do
  describe "#initialize" do
    it "can search an ingredient" do
      visit "/"

      fill_in :q, with: "sweet potatos"
      click_on "Search"

      expect(current_path).to eq(foods_path)
      expect(page).to have_content("GTIN/UPC code")
      expect(page).to have_content("Description")
      expect(page).to have_content("Brand Owner")
      expect(page).to have_content("Ingredients")
    end
  end
end
