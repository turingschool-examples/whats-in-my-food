require "rails_helper"

RSpec.describe "Foods search results page" do
  before :each do
    visit "/"
    fill_in :q, with: "sweet potatoes"
    click_button "Search"
  end

  it "links from search page" do
    expect(current_path).to eq("/foods")
  end

  it "displays total number of items" do
    expect(page).to have_content("49652")
  end

  it "displays first 10 items" do
    expect(page).to have_content("SWEET POTATOES")
  end
end
