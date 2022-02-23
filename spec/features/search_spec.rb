require 'rails_helper'

RSpec.describe 'landing search page' do
  it "has a search form that redirects to the food page" do
    visit root_path

    fill_in "q", with: "Cheddar cheese"
  end

  it "returns an array of food objects with search and redirects to search page" do
    visit root_path

    fill_in "q", with: "Cheddar cheese"
    click_on 'Search'

    expect(current_path).to eq('/foods')
    expect(page).to have_content("Search returned 52829 results.")
    within 'div.foods' do
      expect(all('div.food_*').count).to eq(10)
    end
  end
end
