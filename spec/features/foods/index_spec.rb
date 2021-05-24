require 'rails_helper'

describe 'foods index page' do
  context 'you search for sweet potatoes' do
    before {
      visit root_path
      fill_in :q, with: 'sweet potatoes'
      click_on 'Search'
    }

    it 'brings you to the food index page', :vcr do
      expect(current_path).to eq('/foods')
    end

    it 'should see a total of the number of itmes returned by the search', :vcr do
      expect(page).to have_content('44128')
    end

    it 'should list 10 foods that contain sweet potatoes', :vcr do
      expect(page).to have_content('ARCHER FARMS')
      expect(page).to have_content('Spring Acres Sales Company Inc.')
    end
  end
end