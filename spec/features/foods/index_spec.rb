require 'rails_helper'

RSpec.describe "Food index", type: :feature do

  it 'displays searched foods' do
    visit root_path
    fill_in(:q, with: "sweet potatoes")
    click_button "Search"

  end

end
