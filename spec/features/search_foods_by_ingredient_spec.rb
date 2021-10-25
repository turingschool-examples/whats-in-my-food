require 'rails_helper'

RSpec.describe 'welcome page' do
  before(:each) do
    visit root_path
    fill_in(:q, with: 'sweet potatoes')
    click_button('Search')
  end

  it 'can get to foods_path' do
    expect(current_path).to eq(foods_path)
  end

  it 'has a total of the number of items returned' do
    # Then I should see a total of the number of items returned by the search.
    # (sweet potatoes should find more than 30,000 results)
    expect(page).to have_content('Total Foods: 46320')
  end

  xit 'has a list of ten foods that contain the ingredient' do
    # Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
    # expect(page).to have_section('food-1')
  end

  it 'has attributes for each listed food' do
    # And for each of the foods I should see:
    # - The food's GTIN/UPC code
    # - The food's description
    # - The food's Brand Owner
    # - The food's ingredients
    within '#food-1929370' do
      expect(page).to have_content("GTIN/UPC: 076700002019")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand Owner: John W. Taylor Packing Co. Inc")
      expect(page).to have_content("Ingredients: SWEET POTATOES.")
    end
  end
end
