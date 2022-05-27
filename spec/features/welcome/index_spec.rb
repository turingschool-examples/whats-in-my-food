require 'rails_helper'

RSpec.describe "landing page" do

  it "has a search box and a submit button" do

    visit "/"

    expect(page).to have_field :query
    expect(page).to have_button "Search"

    fill_in :query, with: "Nutella"
    click_on "Search"

    expect(current_path).to be("/foods")
    
  end

end
