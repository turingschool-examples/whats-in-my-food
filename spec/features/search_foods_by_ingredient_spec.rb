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
    expect(page).to have_content('Total Foods: 46320')
  end

  it 'has a list of ten foods that contain the ingredient' do
    within '#foods' do
      expect(all('tr').count).to eq(11)
    end
  end

  it 'has attributes for each listed food' do
    within '#food-1929370' do
      expect(page).to have_content("076700002019")
      expect(page).to have_content("SWEET POTATOES")
      expect(page).to have_content("John W. Taylor Packing Co. Inc")
      expect(page).to have_content("SWEET POTATOES.")
    end
  end
end
