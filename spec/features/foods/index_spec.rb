require 'rails_helper'

RSpec.describe 'foods index page' do

  it 'shows sweet potatoes search results' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'

    click_button 'Search'

    expect(current_path).to eq(foods_path)

    expect(page).to have_content('Total hits: 49676')

    expect(page).to have_content('Item GTIN/UPC code: 8901020020844')
    expect(page).to have_content('Item GTIN/UPC code: 832298010009')
    expect(page).to have_content('Item GTIN/UPC code: 076700002019')
    expect(page).to have_content('Item GTIN/UPC code: 819614010035')
    expect(page).to have_content('Item GTIN/UPC code: 826561500014')
    expect(page).to have_content('Item GTIN/UPC code: 095829400193')
    expect(page).to have_content('Item GTIN/UPC code: 041497224197')
    expect(page).to have_content('Item GTIN/UPC code: 882495000013')
    expect(page).to have_content('Item GTIN/UPC code: 492111402857')
    expect(page).to have_content('Item GTIN/UPC code: 865648000009')
  end

end
