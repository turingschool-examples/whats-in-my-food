require 'rails_helper'
RSpec.describe 'search index' do
  it 'has a search field for ingredients' do
    visit root_path
    fill_in :search, with: 'Sweet Potatoes'
    click_button 'Search'
    expect(current_path).to eq('/foods')
  end
end
