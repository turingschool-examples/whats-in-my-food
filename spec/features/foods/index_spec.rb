require "rails_helper"

RSpec.describe "Food Index Page" do
  it "displays list of attributes for food search results" do
    food1 = Food.create(gtinupc: 124, description: "yummy food", brand_owner: "General Mills", ingredients: "hot dog, bun, mustard")
    food2 = Food.create(gtinupc: 144, description: "yucky food", brand_owner: "General Mills", ingredients: "sweet potatoes")

    visit foods_path

    expect(page).to have_content(food1.gtinupc)
    expect(page).to have_content(food1.description)
    expect(page).to have_content(food1.brand_owner)
    expect(page).to have_content(food1.ingredients)
    expect(page).to have_content(food2.gtinupc)
    expect(page).to have_content(food2.description)
    expect(page).to have_content(food2.brand_owner)
    expect(page).to have_content(food2.ingredients)
  end
end
