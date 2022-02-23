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
        fill_in 'q', with: 'cheese'
        click_button 'Search'
        expect(current_path).to eq(foods_path)
        expect(page).to have_content("Total foods found for: cheese 52659")
        expect(page).to have_content('GTIN/UPC:  ')
        expect(page).to have_content('Description: ')
        expect(page).to have_content('Brand Owner: ')
        expect(page).to have_content('Ingredients: ')
      end
    end
  end
end
