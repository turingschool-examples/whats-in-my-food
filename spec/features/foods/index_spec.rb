require 'rails_helper'

RSpec.describe 'Foods Index Page', type: :feature do
  context 'as a user' do
    describe 'visiting page without search params' do
      it 'returns the user back to root' do
        visit foods_path

        expect(page).to have_current_path(root_path)
      end
    end

    describe 'visting page with search params' do
      describe 'viewable elements' do
        it 'displays a header with the food search term' do
          visit root_path
          fill_in 'q', with: 'sweet potatoes'
          click_button 'Search'
          
          expect(page).to have_css('h1', text: 'Foods that contain sweet potatoes')
        end
        
        it 'displays the total number of items from the search' do
          visit root_path
          fill_in 'q', with: 'sweet potatoes'
          click_button 'Search'
          
          
          expect(page).to have_css('h2', text: 'Total number of foods that match search: 48008')
        end
        
        it 'displays a list of 10 items max from the food search' do
          visit root_path
          fill_in 'q', with: 'sweet potatoes'
          click_button 'Search'
          
          expect(page).to have_css('p', count: 10)
        end
        
        it 'displays the foods information' do
          visit root_path
          fill_in 'q', with: 'sweet potatoes'
          click_button 'Search'

          expect(page).to have_content('GTIN/UPC Code:')
          expect(page).to have_content('Description:')
          expect(page).to have_content('Brand Owner:')
          expect(page).to have_content('Ingredients:')
        end
      end
    end
  end
end