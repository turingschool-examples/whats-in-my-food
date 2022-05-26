require 'rails_helper'

RSpec.describe "/foods" do
  before(:each) do
    visit "/foods?q=sweet+potato"
  end
  context "when I am directed to the /foods page" do
    it "displays number of total results" do
      expect(page).to have_content("Number of results:")
    end
  end
end
