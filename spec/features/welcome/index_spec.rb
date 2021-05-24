require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  # before(:each) do

  # end
  describe 'when a logged in user visits the welcome page they can conduct a search' do
    it 'Happy Path it allows the user to conduct a search and is redirected' do
      visit root_path
      fill_in :q, with: 'sweet potatoes'

      click_button 'Search'
      expect(current_path).to eq(foods_path)
      expect(page).to have_css('.food', count: 10)
      expect(page).to have_content('Total Results: 44128')
      expect(page).to have_content('UPC Code: 492111402857')
      expect(page).to have_content('Description: SWEET POTATOES')
      expect(page).to have_content('Brand Owner: ARCHER FARMS')
      expect(page).to have_content('Ingredients: SWEET POTATOES.')
    end
    it 'Sad Path it returns no results and is returned to the root' do
      visit root_path
      fill_in :q, with: 'asdfefgagsadfsfasdasfasfasg'

      click_button 'Search'
      expect(page).to have_content("No food found")
    end
  end
end
