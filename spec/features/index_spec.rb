require 'rails_helper'

RSpec.describe "The food index page" do
  it "can search from root page", :vcr do
    visit root_path

    fill_in :q, with: 'sweet potatos'
    click_on "Search"

    expect(current_path).to eq(foods_path)
save_and_open_page
    expect(page).to have_content("Results: ")
    within('#food-076700002019') do
      expect(page).to have_content("Code: 076700002019")
      expect(page).to have_content("Description: ")
      expect(page).to have_content("Brand Owner: ")
      expect(page).to have_content("Ingredients: ")
    end
  end
end
