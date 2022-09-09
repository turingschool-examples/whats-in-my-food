require 'rails_helper'

RSpec.describe 'Landing Page' do 
  it 'has a search button that when clicked brings you to /foods' do 
    expect(page).to have_content('Search')
    
    click_on 'Search'

    expect(current_path).to eq('/foods')
  end
end