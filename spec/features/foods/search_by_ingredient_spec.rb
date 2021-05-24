require 'rails_helper'

RSpec.describe "Food Search" do
  scenario 'search_foods_by_ingredient', :vcr do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_button('Search')

    expect(current_path).to eq('/foods')
    expect(page).to have_content('Total Number of Items Returned by the Search: 44128')
    expect(page).to have_content('Number of Results Shown on this Page: 10')
    expect(page).to have_css('.foods', count: 10)
    within(first('.foods')) do
      expect(page).to have_css('.gtinupc')
      expect(page).to have_css('.description')
      expect(page).to have_css('.brandowner')
      expect(page).to have_css('.ingredients')
    end
  end
end
