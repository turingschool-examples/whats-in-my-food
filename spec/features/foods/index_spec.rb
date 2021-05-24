require 'rails_helper'

RSpec.describe 'foods index page' do
  context 'you want to search for foods by ingredient' do
    it 'root search redirects to foods path' do
      visit root_path
      fill_in :q, with: 'sweet potatoes'
      click_on :commit
      
      expect(current_path).to eq(foods_path)
    end
  end
  
  context 'you have searched sweet potatoes' do
    before :each do
      visit root_path
      fill_in :q, with: 'sweet potatoes'
      click_on :commit
    end
    
    it 'should have total number of results' do
      expect(page).to have_content('44128 Results')
    end

    it 'should return a list of the 10 most relevant foods' do
      expect(page).to have_content('GTIN/UPC:', count: 10)
      expect(page).to have_content('Description:', count: 10)
      expect(page).to have_content('Brand Owner:', count: 10)
      expect(page).to have_content('Ingredients:', count: 10)
    end
  end
end