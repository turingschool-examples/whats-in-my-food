require 'rails_helper'

RSpec.describe 'welcome page' do
  it 'has a search form' do
    visit '/'

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq('/foods')
  end
end
