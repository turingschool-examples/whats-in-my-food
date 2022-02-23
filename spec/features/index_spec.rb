require 'rails_helper'

RSpec.describe 'when i visit the food index page' do 
  it 'can fill out form' do 
    visit "/"

    fill_in :search, with: "sweet potatoes"
    click_on "Search"
    expect(current_path).to eq("/foods")
    expect(page).to have_content("sweet potatoes")
  end 
end 