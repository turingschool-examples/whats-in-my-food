require 'rails_helper'

RSpec.describe 'welcome page', :vcr do
  it 'has a search form that redirects to /foods' do
    visit root_path

    fill_in :q, with: 'banana'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
  end
end