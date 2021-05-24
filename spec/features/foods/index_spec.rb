require 'rails_helper'

RSpec.describe 'foods index' do
  it 'has the total number of items return from search' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content(44128)
  end

  it 'has a list of ten foods that contain the ingredient from search' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('ARCHER FAMRS')
    expect(page).to have_content('Spring Acres Sales Company Inc.')
  end
  it 'has attrs for each food'
end
