require 'rails_helper'

RSpec.describe "Food Index" do 
  it "has the top 10 food items that contain this ingredient", :vcr do 
    visit root_path 
    fill_in :q, with: 'sweet potatoes' #changed 'ingredient search' to :q 
    click_button 'Search'

    expect(current_path).to eq("/foods")
    expect(page).to have_content('Description: ')
    expect(page).to have_content('Brand Owner')
    expect(page).to have_content('Ingredients')
    expect(page).to have_content('Total')
  end
end