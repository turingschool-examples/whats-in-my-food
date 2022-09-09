require 'rails_helper'

RSpec.describe 'Landing Page' do
  it 'can search for foods', vcr: 'sweet_potatoes' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
  end
end