require 'rails_helper'

RSpec.describe 'searching for food', type: :feature do
  it 'can search for sweet potatoes' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
  end
end
