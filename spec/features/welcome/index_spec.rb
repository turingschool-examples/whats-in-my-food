require 'rails_helper'

RSpec.describe 'Welcome Index page', :vcr do
  it 'has a search form' do
    visit root_path

    expect(page).to have_button('Search')
  end
end