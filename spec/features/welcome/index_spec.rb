require 'rails_helper'

RSpec.describe 'Welcome page' do
  it 'exists' do
    visit root_path
    expect(current_path).to eq(root_path)
  end

  it 'can search for a food' do
    visit root_path
    query = 'sweet potatoes'
    fill_in (:q), with: query
    click_on 'Search'
    expect(current_path).to eq(foods_path)

    expect(page).to have_content("Number of items: 49676")
  end
end
