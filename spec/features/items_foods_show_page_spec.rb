require 'rails_helper'

RSpec.describe 'show page for the searched food', type: :feature do
  it 'can show total number of items with sweet potatoes' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content("Total number of items with sweet potatoes: 30000"
  end

  it 'shows a list of ten foods that contain sweet potatoes and I see some of their attributes' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(page).to have_content("Ten foods that contain sweet potatoes:")

    within("#food-1") do
      expect(page).to have_content(@food1.code)
      expect(page).to have_content(@food1.description)
      expect(page).to have_content(@food1.brand)
      expect(page).to have_content(@food1.ingredients)
    end
  end
end
