require 'rails_helper'

RSpec.describe 'the food search index page', :vcr do

  it 'exists' do
    visit '/'

    fill_in :q, with: 'sweet potatoes'

    click_button

    expect(current_path).to eq('/foods')
  end

  it 'lists info for a food', :vcr do
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_button

    expect(page).to have_content('Results:')
  end

end
