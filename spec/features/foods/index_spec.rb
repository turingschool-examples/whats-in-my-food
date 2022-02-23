require 'rails_helper'
RSpec.describe 'search index' do
  it 'returns search results' do
    visit root_path
    fill_in :q, with: 'Sweet Potatoes'
    click_button 'Search'
    expect(current_path).to eq('/foods')
    expect(page).to have_content("Total Results: 48008")
  end
end
