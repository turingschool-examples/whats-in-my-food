require 'rails_helper'
RSpec.describe "the welcome page" do
  it "has a form that finds foods based on search", :vcr do
    visit "/"
    fill_in :q, with: "butter"
    click_button("Search")
    expect(current_path).to eq("/foods")
    expect(page).to have_content("FOODS THAT CONTAIN butter")
    expect(page).to have_content("Description: BUTTER")
    expect(page).to have_content("Ingredients: ORGANIC BUTTER LETTUCE LEAVES.")
    expect(page).to have_content("GTIN: 032601033125")
    expect(page).to have_content("Brand Owner: Taylor Fresh Foods, Inc.")
  end
end