require 'rails_helper'

RSpec.describe 'foods index page', :vcr do
  it 'displays a list of foods from search' do
    visit root_path

    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq(foods_path)

  end
end
