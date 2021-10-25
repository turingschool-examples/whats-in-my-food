require "rails_helper"

RSpec.describe 'search functionality' do
  it 'can search' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'

    expect(current_path).to eq('/foods')

    expect(page).to have_content('Total results: 45082')
    expect(page).to have_content('076700002019')
    expect(page).to have_content('John W. Taylor Packing Co. Inc')
    expect(page).to have_content("ORGANIC SWEET POTATOES.")
  end
end
