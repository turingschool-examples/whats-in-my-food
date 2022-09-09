require 'rails_helper'

RSpec.describe 'Foods Search' do
  it 'can search for foods', vcr: 'sweet_potatoes' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    within '#food-1' do
      expect(page).to have_content('1. 8901020020844')
      expect(page).to have_content('Description: Sweet potatoes')
      expect(page).to have_content('Brand Owner: Not a branded item')
      expect(page).to have_content('Ingredients: Organic sweet potatoes.')
    end

    within '#food-10' do
      expect(page).to have_content('10. 865648000009')
      expect(page).to have_content('Description: Sweet potatoes')
      expect(page).to have_content('Brand Owner: Topashaw farms')
      expect(page).to have_content('Ingredients: No ingredients found.')
    end
  end

  it 'error with no search', vcr: 'error' do
    visit foods_path

    expect(page).to_not have_content('result for parks in')
    expect(page).to_not have_content('Description:')
    expect(page).to_not have_content('Brand Owner:')
    expect(page).to_not have_content('Ingredients:')
    expect(page).to have_content('Error:')
    expect(page).to have_content('Please search for an ingredient.')
  end
end