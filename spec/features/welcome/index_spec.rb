require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  describe 'view' do
    it 'Fills in the search form' do
      visit root_path

      fill_in :q, with: 'sweet potatoes'

      click_button 'Search'

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("Total Results:")
      expect(page).to have_content("GTIN/UPC code: adsfadf")
      expect(page).to have_content("Description: adsfadf")
      expect(page).to have_content("Brand Owner: adsfadf")
      expect(page).to have_content("Ingredients: adsfadf")
    end
  end
end
