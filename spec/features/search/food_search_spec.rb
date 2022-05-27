require 'rails_helper'


RSpec.describe 'Food Search' do
  
  describe 'As a Visitor', :vcr do

    it 'When I type in a food and click search I am on the foods page' do
      visit '/'

      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'
  
      expect(current_path).to eq('/foods')

    end 

    it 'I should see the total number of items returned for my search', :vcr do
      visit '/'

      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'
     
      expect(page).to have_content("Results:")
      expect(page).to have_content("Results Count: 50")
      
    end 

    it 'Has list of foods that contain search terms', :vcr do
      visit '/'

      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'
      # save_and_open_page
      expect(page).to have_content('Foods Found In:')
      expect(page).to have_content('FDC ID: 983525')
      expect(page).to have_content('Description: SWEET POTATOES')
      expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM')
      expect(page).to have_content('Ingredients: ORGANIC SWEET POTATOES.')

    end 

  end 

end