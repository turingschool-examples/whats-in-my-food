require 'rails_helper'

RSpec.describe "Search" do
  it "can search an item", :vcr do
    visit '/'

    fill_in 'q', with: 'sweet potatoes'

    click_on "Search"

    expect(current_path).to eq('/foods')
    save_and_open_page
    expect(page).to have_content()
  end

end
