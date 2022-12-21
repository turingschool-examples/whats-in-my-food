require 'rails_helper'

RSpec.describe 'food index page', type: :feature do

  it 'displays the total number of search results for a given term' do
    visit '/'

    fill_in "q", with: "sweet potatoes"

    click_on "Search"

    expect(current_path).to eq("/foods")

    expect(page).to have_content("Total Results: 49676")

    expect(page).to have_selector(".food-item", count:10)
  
  end

end