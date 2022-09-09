require 'rails_helper'

RSpec.describe 'Landing Page' do 
  it 'has a search button that when clicked brings you to /foods' do 
    visit '/'
    
    expect(page).to have_button('Search')
    
    click_button 'Search'

    expect(current_path).to eq('/foods')
  end
end