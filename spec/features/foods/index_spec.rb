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
    expect(page).to have_content('Description: SWEET POTATOES')
    expect(page).to have_content('Ingredients: SWEET POTATOES')
    expect(page).to have_content('Brand Owner: John W. Taylor Packing Co. Inc')
    expect(page).to have_content('Brand Owner: BAKO SWEET')
    expect(page).to have_content('Brand Owner: ARCHER FARMS')
  end

end
