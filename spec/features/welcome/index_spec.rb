require "rails_helper"

RSpec.describe "Welcome Index Page", type: :feature do
  it "displays form to search by key word(s)", :vcr do
    visit root_path

    fill_in :q, with: "sweet potatoe"
    click_button "Search"

    expect(current_path).to eq(foods_path)
  end
end
