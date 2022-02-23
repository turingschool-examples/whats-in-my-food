require 'rails_helper'

RSpec.describe 'Foods Index Page' do
  it 'shows the total number of items returned by the search' do
    VCR.use_cassette('foods_for_sweet_potatoes') do

      visit '/foods'
      #  (sweet potatoes should find more than 30,000 results)
      expect(page).to have_content("Total items found: 30,000")
      expect(page).to have_content('.foods', count: 10)
    end
  end

  xit 'shows a list of TEN foods containing sweet potatoes and their details' do
    visit '/foods'

    within(first('.foods')) do
      expect(page).to have_css('.GTIN/UPC code')
      expect(page).to have_css('.description')
      expect(page).to have_css('.Brand Owner')
      expect(page).to have_css('.ingredients')
    end
    #  Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
    # And for each of the foods I should see:
    #  - The food's GTIN/UPC code
    #  - The food's description
    #  - The food's Brand Owner
    #  - The food's ingredients
  end
end
