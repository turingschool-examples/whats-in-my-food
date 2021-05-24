require "rails_helper"

RSpec.describe "Welcome Index Page" do
  # before(:each) do

  # end
  describe "when a logged in user visits the welcome page they can conduct a search" do
    it "Happy Path it allows the user to conduct a search and is redirected" do
      visit root_path
      fill_in :q, with: "banana"
      click_button "Search"
      expect(current_path).to eq(food_index_path)


    end
  end
end
