require 'rails_helper'

RSpec.describe 'food index' do
  it 'allows the user to search for foods' do
    visit root_path
    fill_in :q, with: "sweet potatoes"
    click_button 'Search'
    expect(page.status_code).to eq(200)
  end
end
