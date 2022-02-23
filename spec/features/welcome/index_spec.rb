require 'rails_helper'

RSpec.describe 'Landing Page' do
  it 'allows a user to search for an item and is routed to /foods for the results' do
    visit "/"

    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq "/foods"
    expect(page).to have_content "Ingredients: ORGANIC SWEET POTATOES"
  end
end
