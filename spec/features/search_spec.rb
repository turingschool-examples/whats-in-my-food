require 'rails_helper'

RSpec.describe "Search Form" do
    it "when I fill in the search form with 'sweet potatoes'
    and I click 'search'
    then I should be on the page '/foods'
    then I should see a total of the number of items returned by the search
    then I should see a list of TEN foods that contain that ingredient
    and for each of the foods I should see:
    - the food's GTIN/UPC code
    - the food's description
    - the food's Brand Owner
    - the food's ingredients" do 
        visit root_path
        fill_in 'q', with: 'sweet potatoes'
        click_button('Search')
        expect(current_path).to eq(foods_path)
    end
end