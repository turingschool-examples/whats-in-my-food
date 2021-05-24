require 'rails_helper'

RSpec.describe 'User Story' do
 it "visit '/'
    fill in the search form with 'sweet potatoes'
    (Note: Use the existing search form)
    click 'Search'
    should be on page '/foods'
    should see a total of the number of items returned by the search.
    (sweet potatoes should find more than 30,000 results)
    should see a list of TEN foods that contain the ingredient 'sweet potatoes'
    For each of the foods I should see:
      - The food's GTIN/UPC code
      - The food's description
      - The food's Brand Owner
      - The food's ingredients " do
    visit root_path
    expect(page).to have_content("Ingredient Search")
    fill_in :q, with: "sweet potatoes"
    click_on("Search")
    expect(current_path).to eq(foods_path)
    save_and_open_page
    # within(first('.food_item')) do
    #   expect(page).to have_css('.gtinUpc')
    #   expect(page).to have_css('.description')
    #   expect(page).to have_css('.brandOwner')
    #   expect(page).to have_css('.ingredients')
    # end
  end
end
