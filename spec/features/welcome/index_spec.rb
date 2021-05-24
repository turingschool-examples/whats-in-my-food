require 'rails_helper'

RSpec.describe 'Welcome page' do
  describe 'when a user visits the root path' do
    it 'displays an ingredient search form' do
      visit root_path

      expect(page).to have_content("Ingredient Search")
      expect(page).to have_button('Search')
    end
  end
end