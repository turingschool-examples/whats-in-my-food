require 'rails_helper'

RSpec.describe 'Foods Index' do
  it 'clicking search on root_path takes you to foods_path' do
    VCR.use_cassette('foods_search', re_record_interval: 1.hour) do
      visit root_path

      fill_in :q, with: 'Sweet Potatoes'
      click_button 'Search'

      expect(current_path).to eq(foods_path)
      expect(page.status_code).to eq 200
    end
  end
  it 'lists attributes of each result of the search' do
    VCR.use_cassette('foods_search', re_record_interval: 1.hour) do
      visit root_path

      fill_in :q, with: 'Sweet Potatoes'
      click_button 'Search'
      
        expect(page).to have_content('Description: SWEET POTATOES', count: 10)
        expect(page).to have_content('gtinUpc: 8901020020844')
        expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM')
        expect(page).to have_content('Ingredients: ORGANIC SWEET POTATOES')

    end
  end
end