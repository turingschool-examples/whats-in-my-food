# spec/foods/foods_spec.rb

require 'rails_helper'

RSpec.describe "Food search results page", type: :feature do
  it 'has foods' do
    visit '/'
    fill_in :q, with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq('/foods')
    expect(page).to have_content('Total Results: 396437')
    within(".food-stats") do
      expect(page).to have_content('GTIN/UPC Code:')
      expect(page).to have_content('Description:')
      expect(page).to have_content('Ingredients:')
    end
  end
end
