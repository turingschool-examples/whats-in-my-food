require 'rails_helper'

RSpec.describe 'food index' do
  describe 'search' do
    it 'can search for food items' do
      visit '/'
      # save_and_open_page
      fill_in :q, with: 'sweet potatoes'
      click_on "Search"
      expect(current_path).to eq('/foods')
      expect(page).to have_content("Total number of foods: ")
      expect(page).to have_content('GTIN/UPC code: ')
      expect(page).to have_content('Description: ')
      expect(page).to have_content('Brand owner: ')
      expect(page).to have_content('Ingredients: ')
    end
  end
end
