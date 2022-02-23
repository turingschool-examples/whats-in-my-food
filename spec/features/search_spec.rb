require 'rails_helper'

RSpec.describe 'landing search page' do
  it "has a search form that redirects to the food page" do
    visit root_path

    save_and_open_page
    fill_in "q", with: "Cheddar cheese"

    expect(current_path).to eq('/foods')
  end
end
