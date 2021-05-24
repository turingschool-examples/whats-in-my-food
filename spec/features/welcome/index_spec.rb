require 'rails_helper'

RSpec.describe 'Welcome page' do
  describe 'when a user visits the root path' do
    it 'displays an ingredient search form' do
      visit root_path

      expect(page).to have_content("Ingredient Search")
      expect(page).to have_button('Search')
    end

    it 'user can search for a food by name' do
      visit root_path
      fill_in :foods, with: 'sweet potatoes'
      click_button 'Search'
      expect(current_path).to eq('/foods')
    end
  end
end