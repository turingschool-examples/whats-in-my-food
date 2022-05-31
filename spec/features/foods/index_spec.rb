require 'rails_helper'

RSpec.describe 'food index page' do
  it 'displays 10 foods', :vcr do
    visit '/'
    page.fill_in('q', with: "corn")
    click_on ("Search")
    expect(page).to have_content("GTIN/UPC:", count: 10)
  end

  it 'displays number of hits', :vcr do
    visit '/'
    page.fill_in('q', with: "corn")
    click_on ("Search")

    within('div#hits') do
      expect(page).to have_content("138783")
    end
  end
end
