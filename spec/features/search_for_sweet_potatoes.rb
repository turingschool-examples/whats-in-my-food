require 'rails_helper'

RSpec.describe 'searching for food', type: :feature do
  it 'can search for sweet potatoes' do
    visit root_path

    fill_in :search, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_page).to eq(foods_path)
  end
end
