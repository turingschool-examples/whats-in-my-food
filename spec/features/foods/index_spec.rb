require 'rails_helper'
RSpec.describe "Foods page" do
  
  it "shows all foods that match a search" do
    visit root_path
    fill_in :q, with: "Sweet Potatoes"
    click_button 'Search'
    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Results:')
  end
end