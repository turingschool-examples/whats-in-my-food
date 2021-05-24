require 'rails_helper'

describe "As an authenticated user, when I visit the root path and fill in the search form with 'sweet potatoe' and click Search" do
  it "should should take me to the /foods page" do
    visit root_path

    fill_in "q", with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq(foods_path)
  end
end
