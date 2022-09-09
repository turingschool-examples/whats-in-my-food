require 'rails_helper'

RSpec.describe 'Welcome Index Page', :vcr do
  before do
    visit root_path
  end

  it "has a search form" do
    expect(page).to have_field(:q)
    expect(page).to have_button("Search")
  end

  it "can search for foods" do
    fill_in :q, with: "sweet potatoes"
    click_button "Search"
  end

  it "redirects to foods index page after search" do
    fill_in :q, with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq(foods_path)
  end
end