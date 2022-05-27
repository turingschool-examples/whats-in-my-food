require "rails_helper"

RSpec.describe "landing page" do
  it "fills in form" do
    visit "/"

    fill_in :q, with: "egg"

    click_button "Search"

    expect(current_path).to eq("/foods")

    expect(page).to have_content("Number of items returned:")
  end
end
