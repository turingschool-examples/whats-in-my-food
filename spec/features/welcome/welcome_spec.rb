require 'rails_helper'

RSpec.describe 'Welcome Page' do
  it 'has a form to search for a food' do
    visit '/'

    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq("/foods")
  end
end

#  Then I should see a total of the number of items returned by the search.
#  (sweet potatoes should find more than 30,000 results)
#  Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
#  - The food's GTIN/UPC code
#  - The food's description
#  - The food's Brand Owner
#  - The food's ingredients
