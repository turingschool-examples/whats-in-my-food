require 'rails_helper'

RSpec.describe 'landing page', type: :feature do
  
  it 'has a fillable search bar, and when filled and "search" button is clicked, takes user to "/foods" where they see the results' do

    visit '/'

    fill_in "q", with: "sweet potatoes"

    click_on "Search"

    expect(current_path).to eq("/foods")
  end

  it 'reloads page with error if search field left blank' do

    visit '/'

    click_on "Search"

    expect(current_path).to eq("/")
    expect(page).to have_content("Search field cannot be blank!")
  end

end