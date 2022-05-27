require 'rails_helper'

RSpec.describe 'welcome page' do
  it 'has a search form' do
    visit '/'

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq('/foods')
  end

  it 'search returns a list of foods' do
    visit '/'

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq('/foods')

    expect(page).to have_content('sweet potatoes')
  end
end
