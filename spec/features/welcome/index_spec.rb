require "rails_helper"

describe "welcome page" do
  before do
    visit '/'
  end
  it "should have a search bar" do
    fill_in "q", with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq('/foods')
  end
end
