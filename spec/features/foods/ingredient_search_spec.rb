require 'rails_helper'

RSpec.describe "ingredient search result page: '/foods' " do

  before :each do
    visit "/"
    fill_in :query, with: "Nutella"
    click_on "Search"
    save_and_open_page
  end

  it "displays the total number of results"

end
