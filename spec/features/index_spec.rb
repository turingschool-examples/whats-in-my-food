require 'rails_helper'

RSpec.describe 'The food index by search' do
  it 'finds top ten items that have the searched food' do

    visit root_path

    fill_in :q, with: "sweet potatoes"
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Number of hits: 48437')

    within '#food-0' do

      expect(page).to have_content('GTIN/UPC code: 8901020020844')
      expect(page).to have_content('Description: SWEET POTATOES')
      expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM')
      expect(page).to have_content('Ingredients: ORGANIC SWEET POTATOES.')
    end

    within '#food-1' do

      expect(page).to have_content('GTIN/UPC code: 832298010009')
      expect(page).to have_content('Description: SWEET POTATOES')
      expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM')
      expect(page).to have_content('Ingredients:')
    end

    within '#food-2' do

      expect(page).to have_content('GTIN/UPC code: 076700002019')
      expect(page).to have_content('Description: SWEET POTATOES')
      expect(page).to have_content('Brand Owner: John W. Taylor Packing Co. Inc')
      expect(page).to have_content('Ingredients: SWEET POTATOES.')
    end
  end
end
