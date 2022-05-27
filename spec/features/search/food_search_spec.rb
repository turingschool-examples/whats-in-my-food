require 'rails_helper'


RSpec.describe 'Food Search' do
  
  describe 'As a Visitor' do

    it 'When I type in a food and click search I am on the foods page' do
      visit '/'

      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'
  
      expect(current_path).to eq('/foods')

    end 

    it 'I should see the total number of items returned for my search' do
      visit '/'

      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'
     
      expect(page).to have_content("Results:")
      
    end 

    it 'Has list of foods that contain search terms' do
      visit '/'

      fill_in 'q', with: 'sweet potatoes'
      click_on 'Search'

      expect(page).to have_content('Foods Found In:')
      expect(page).to have_content('GTIN/UPC Code:')

    end 

  end 

end