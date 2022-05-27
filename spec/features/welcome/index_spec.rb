require 'rails_helper'

# As a user,
#  When I visit "/"
#  And I fill in the search form with "sweet potatoes"
#  (Note: Use the existing search form)
#  And I click "Search"
#  Then I should be on page "/foods"
#  Then I should see a total of the number of items returned by the search.
#  (sweet potatoes should find more than 30,000 results)
#  Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
#  - The food's GTIN/UPC code
#  - The food's description
#  - The food's Brand Owner
#  - The food's ingredients


RSpec.describe 'Welcome Index Page' do
  describe 'Search for ingredients' do
    it 'I can fill in form with sweet potatoes' do
      visit '/'

      fill_in :q, with: 'sweet potatoes'

      click_button 'Search'

      expect(current_path).to eq('/foods')
    end
  end
end