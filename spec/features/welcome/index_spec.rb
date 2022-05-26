require 'rails_helper'

RSpec.describe "/" do
  context "when I visit the landing page" do
    it "redirects me to a /food page" do
      visit '/'
      fill_in(:q, with: "sweet potato")
      click_on "Search"
      expect(current_path).to eq("/foods")
    end
  end
end
