require 'rails_helper'

RSpec.describe 'welcome index' do
  before :each do
    visit root_path
  end

  it 'has a search form' do
    expect(page).to have_field(:q)
  end

  it 'takes a user to the foods page when the field is filled in and submitted' do
    fill_in(:q, with: "sweet potatoes")
    click_button "Search"

    expect(current_path).to eq(foods_path)
  end

end
