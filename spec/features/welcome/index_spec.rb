require 'rails_helper'

RSpec.describe 'index page' do
  it 'fills in the form with a food and returns matching food' do
    visit "/"

    fill_in "q", with: "sweet potatoes"

    click_on "Search"

 
  end
end
  
