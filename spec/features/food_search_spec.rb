require 'rails_helper'

RSpec.describe 'Food Search Page', type: :feature do
  before :each do
    visit root_path
    fill_in :q, with: 'sweet potatoes'
    click_on "Search"
  end

  it 'Successfully loads the page on request' do
    expect(current_path).to eq foods_path
  end

  it 'provides the number of positive results' do
    within("#total-hits") do
      expect(page).to have_content("49652")
    end
  end

  it 'Provides the top 10 most relevant foods' do
    within("#top-10-foods") do
      expect(page).to have_content("FDC ID: 451884")
      expect(page).to have_content("FDC ID: 1662504")
    end
  end
end