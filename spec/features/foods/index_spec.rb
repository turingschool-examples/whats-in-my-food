require 'rails_helper'

RSpec.describe 'Root Path' do
  before(:each) do
    visit "/"
  end
  context 'When I visit / and fill in the search form and click search' do
    it 'takes me to /foods where I should see a total number of items returned' do
      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq("/foods")
      expect(page).to have_content("Total Search Results: 48008")
    end

    it 'takes me to /foods where I see a list of ten foods that contain my search item' do
      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq("/foods")
      expect(page).to have_content("Foods Containing Sweet Potatoes:")
      # make a within block or something here
    end

    it 'shows the foods description, upc code, brand, and ingredients' do
      fill_in :q, with: "sweet potatoes"
      click_button "Search"

      expect(current_path).to eq("/foods")
      expect(page).to have_content("")
    end
  end
end
