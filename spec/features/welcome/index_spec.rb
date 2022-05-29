require "rails_helper"

RSpec.describe "Welcome Index Page", type: :feature do
  it "displays form to search by key word(s)", :vcr do
    visit root_path

    fill_in :query, with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq(foods_path)
    expect(page.status_code).to eq(200)
  end
end
