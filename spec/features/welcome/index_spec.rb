require 'rails_helper'

RSpec.describe 'index page' do
  it 'fills in the form with a food and returns matching food', :vcr do
    visit "/"

    fill_in "q", with: "sweet potatoes"

    click_on "Search"

    expect(current_path).to eql('/foods')

    expect(page).to have_content("SWEET POTATOES")

    expect(page).to have_content("Total Matches: 49676")
 
  end
end
  
