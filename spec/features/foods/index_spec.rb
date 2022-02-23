require 'rails_helper'

RSpec.describe 'Foods Index Page' do
  describe 'from the root path, visitor fills in search form' do
    it 'redirects to the foods index and sees results of the search' , :vcr do
      visit root_path
      fill_in 'q', with: 'sweet potatoes'
      click_on "Search"

      expect(current_path).to eq(foods_path)
      expect(page).to have_status(200)
    end
  end
end
