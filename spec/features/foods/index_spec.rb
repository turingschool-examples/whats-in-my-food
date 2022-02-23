require 'rails_helper'
RSpec.describe 'foods index page' do
  context 'as a user searching foods by name' do
    describe 'view', :vcr do
      it 'displays no info before search' do
        visit foods_path

        expect(current_path).to eq(foods_path)
        expect(page).to_not have_content('GTIN/UPC:  ')
        expect(page).to_not have_content('Description: ')
        expect(page).to_not have_content('Brand Owner: ')
        expect(page).to_not have_content('Ingredients: ')
      end

      it 'displays all relevant foods after a search' do
        visit root_path
        fill_in 'q', with: 'sweet potatoes'
        click_button 'Search'
        expect(current_path).to eq(foods_path)
        expect(page).to have_content("Total results found for sweet potatoes: 48008")
        expect(page).to have_content('GTIN/UPC:')
        expect(page).to have_content('Description: ')
        expect(page).to have_content('Brand Owner: ')
        expect(page).to have_content('Ingredients: ')
        #couldn't figure out proper testing for limiting page results
        #expect(page).to have_css('GTIN/UPC:', count: 10)
      end
    end
  end
end
