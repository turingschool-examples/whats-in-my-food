require 'rails_helper'

RSpec.describe "Home page", type: :feature do

  it 'has ingredient search' do
    visit root_path
    expect(page).to have_content("Ingredient Search")

    fill_in(:q, with: "sweet potatoes")
    click_button "Search"
    expect(current_path).to eq("/foods")
  end

end
