require "rails_helper"

RSpec.describe "landing search page" do
  it "has a search form that redirects to the food page" do
    visit root_path

    fill_in "q", with: "sweet potatoes"
  end
  it "returns an array of food objects with search and redirects to search page" do
    visit root_path

    fill_in "q", with: "sweet potatoes"
    click_on "Search"
    expect(current_path).to eq("/foods")
    expect(page).to have_content("Search returned 49652 results.")
    within "div.foods" do
      within "div.food_1" do
        expect(page).to have_content("Description:")
        expect(page).to have_content("Item Code:")
        expect(page).to have_content("Brand:")
        expect(page).to have_content("Ingredients:")
      end
    end
  end
end
