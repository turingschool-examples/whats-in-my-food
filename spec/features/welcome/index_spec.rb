require 'rails_helper'

RSpec.describe 'Whats In My Food Welcome page' do
  it 'displays search bar' do
    visit('/')
    expect(page).to have_content('Ingredient Search')
    expect(page).to have_button('Search')
  end

  it 'searches for sweet potatoes' do
    visit ('/')

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
    expect(current_path).to_not eq('/')
    
  end
end
