require 'rails_helper'

RSpec.describe 'Food Search', :vcr do
  let(:result) { FoodFacade.results("sweet potatoes")[2] }
  let(:result2) { FoodFacade.results("sweet potatoes")[3] }

  it 'searches for individual results' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_on "Search"

    expect(page).to have_content("Results for sweet potatoes")
    expect(page).to have_content('Total Results: 49676')
    expect(page).to have_css("div", count: 10)

    within "#food-#{result.id}" do
      expect(page).to have_content("John W. Taylor Packing Co. Inc")
      expect(page).to have_content(76700002019)
      expect(page).to_not have_content("BAKO SWEET")
    end

    within "#food-#{result2.id}" do
      expect(page).to have_content("BAKO SWEET")
      expect(page).to have_content(819614010035)
      expect(page).to_not have_content("John W. Taylor Packing Co. Inc")
    end
  end
end