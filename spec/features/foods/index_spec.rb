require 'rails_helper'

RSpec.describe 'foods index' do
  before :each do
    visit root_path
    fill_in(:q, with: "sweet potatoes")
    click_button "Search"
  end

  it 'has the total number of foods that contain that ingredient' do
    save_and_open_page
    expect(current_path).to eq(foods_path)
    expect(page).to have_content("foods that contain sweet potatoes")
  end
end
