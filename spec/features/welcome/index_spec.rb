require 'rails_helper'

RSpec.describe 'welcome page' do
  before(:each) do
    visit root_path
  end

  it 'has a search query form' do
    expect(page).to have_field('q')
    expect(page).to have_button('Search')
  end

  it 'can submit search query' do
    fill_in 'q', with: "sweet potatoes"
    click_button('Search')
    expect(current_path).to eq(foods_path)
  end
end
