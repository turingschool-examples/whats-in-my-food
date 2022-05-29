require "rails_helper"

RSpec.describe "Food Index Page", type: :feature do
  it "displays list of attributes for food search results", :vcr do
    food1 = Food.new(gtinupc: 124, description: "yummy food", brand_owner: "General Mills", ingredients: "hot dog, bun, mustard")

    visit foods_path

    expect(page).to have_content(food1.gtinupc)
    expect(page).to have_content(food1.brand_owner)
  end
end
