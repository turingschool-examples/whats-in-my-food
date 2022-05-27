require "rails_helper"

RSpec.describe "Foods search results page" do
  it "links from search page" do
    visit "/"
    fill_in :q, with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq("/foods")
  end
end
