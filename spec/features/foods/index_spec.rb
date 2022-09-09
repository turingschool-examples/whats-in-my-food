require 'rails_helper'

RSpec.describe 'food search page' do
   it 'see a total of the number of items returned by the search' do
      visit root_path
      fill_in :q, with: "sweet potatoes"
      click_on "Search"

      expect(page).to have_content("Total number of items found: 10")
   end
end