require 'rails_helper'

describe 'foods index' do
  before :each do
    visit root_path
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
  end


  it 'shows total number of items returned' do
    expect(current_path).to eq(foods_path)
    expect(page).to have_content("Total Results: 46,320")
  end
end
