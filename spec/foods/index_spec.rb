# spec/foods/foods_spec.rb

require 'rails_helper'

RSpec.describe "Food search results page", type: :feature do
  it 'has foods' do
    visit '/'
    fill_in :q, with: "sweet potatoes"
    click_button "Search"

    expect(page).to have_content('Total Results: 396437')
    
    within(".foods") do
      expect(page).to have_content('')
    end
  end


    #  Then I should be on page "/foods"
    #  Then I should see a total of the number of items returned by the search.
    #  (sweet potatoes should find more than 30,000 results)
    #  Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
    # And for each of the foods I should see:
    #  - The food's Brand Owner
    #  - The food's ingredients

end
