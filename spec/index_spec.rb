# spec/index_spec.rb

require 'rails_helper'

RSpec.describe 'Index', type: :feature do
  it 'form searches for a list of foods that contain an ingredient' do
    visit '/'

    expect(page).to have_button('Search')
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq('/foods')
  end
end
