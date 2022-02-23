require 'rails_helper'

RSpec.describe 'welcome index' do
  it 'can fill in form and search for a food' do 
    visit root_path 

    fill_in :q, with: 'sweet potatoes'
    click_on "Search"

    expect(current_path).to eq("/foods")
    
    expect(page).to have_content("8901020020844")
    expect(page).to have_content("ORGANIC SWEET POTATOES.")
    expect(page).to have_content("sweet potatoes")
    expect(page).to have_content("NOT A BRANDED ITEM")
  end
end