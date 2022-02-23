require 'rails_helper'

RSpec.describe 'foods index page' do
  context 'when search for food is valid' do
    it 'returns a list of items containing the search word' do
      VCR.use_cassette('sweet_potatoes_totals') do
        visit root_path

        within '.form-inline' do
          fill_in 'q', with: 'sweet potatoes'

          click_on 'Search'

          expect(current_path).to eq(foods_path)
        end

        within '.foods' do
          expect(page).to have_content('Total Results: 48008')
          expect(page).to have_content('Description: SWEET POTATOES')

          expect(page).to have_content('UPC: 8901020020844')
          expect(page).to have_content('Brand: NOT A BRANDED ITEM')
          expect(page).to have_css('.total-foods', count: 10)
        end
      end
    end
  end
end
