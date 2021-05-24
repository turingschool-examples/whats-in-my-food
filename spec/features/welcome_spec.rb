require 'rails_helper'

RSpec.describe "As a user when I visit the root" do
  context "I fill in the search form with 'sweet potatoes'" do
    it "happy path, goes to foods index page" do
      visit root_path

      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'

      expect(current_path).to eq(foods_path)
      expect(page).to have_content('Foods')
      expect(page).to have_content('RESULTS')
      expect(page).to have_content('Gtin upc code')
      expect(page).to have_content('Description')
      expect(page).to have_content('Brand')
      expect(page).to have_content('Ingredient')
    end
  end
end
