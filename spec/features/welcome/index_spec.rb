require 'rails_helper'

RSpec.describe 'Welcome page' do
  it 'exists' do
    visit root_path
    expect(current_path).to eq(root_path)
  end

  it 'can search for a food' do
    visit root_path
    fill_in (:q), with: 'sweet potatoes'
    click_on 'Search'
    expect(current_path).to eq(foods_path)
  end
end
