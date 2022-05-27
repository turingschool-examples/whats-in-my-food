require 'rails_helper'

RSpec.describe "Foods index page", type: :feature do
  it 'shows search results' do
    visit '/'

    fill_in :q, with: "sweet potatoes"
    click_on "Search"

    expect(current_path).to eq('/foods')
    expect(page).to have_content('Number of Results: ')
    save_and_open_page
  end
end
