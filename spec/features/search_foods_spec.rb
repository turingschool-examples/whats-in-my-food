require 'rails_helper'
RSpec.describe 'Food search' do
  describe 'happy path' do
    it 'allows user to search for foods' do

      visit root_path

      fill_in :q, with: 'Sweet Potato'

      click_button "Search"

      expect(page.status_code).to eq 200
      save_and_open_page
      expect(page).to have_content("Total Number of items returned by search: 46770")

    end
  end
end
