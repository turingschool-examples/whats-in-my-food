require 'rails_helper'

describe 'foods index page' do
  context 'you search for sweet potatoes' do
    before {
      visit root_path
      fill_in :q, with: 'sweet potatoes'
      click_on 'Search'
    }
    it 'brings you to the food index page' do
      expect(current_path).to eq('/foods')
    end
  end
end