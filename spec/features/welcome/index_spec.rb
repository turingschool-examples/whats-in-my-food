require 'rails_helper'

RSpec.describe 'Welcome Page' do
  describe "As a user, when I visit '/' and i fill in the search form with 'sweet potatoes' and I click search" do
    it "then i should be on page /foods. then i should see a total of the number of items returned by the search. Then i should see a list of ten foods that contain the ingredient 'sweet potatoes'" do
      
      visit '/'

      fill_in :q, with: 'sweet potatoes'
      click_button "Search" 

      expect(current_path).to eq('/foods')
      
    end
  end
end