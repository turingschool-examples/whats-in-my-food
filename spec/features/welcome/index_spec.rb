require 'rails_helper'

describe 'welcome page' do
  it 'can search a food' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'

    expect(page).to have_button('Search')
  end
end