require 'rails_helper'

RSpec.describe 'Welcome; Landing Page' do
  before :each do
    visit root_path
  end

  it 'renders the food search form' do
    expect(page).to have_content('Ingredient Search')
    expect(find('form')).to have_field(:q)
    expect(find('form')).to have_button('Search')
  end

  it "fills in :q with sweet potatoes, clicks Search and redirects to the foods index page displaying 10 foods with sweet potatoes as an ingredient" do

    fill_in :q, with: 'sweet potatoes'
    click_button('Search')

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Total Found: 44128')
    expect(page).to have_content('Dish Description: Sweet Potatoes')
    expect(page).to have_content('GTIN/UPC Code: 492111402857')
    expect(page).to have_content('Brand Owner: Archer Farms')
    expect(page).to have_content('Ingredients: SWEET POTATOES.')

    expect(page).to have_content('GTIN/UPC Code: 046567926179')
    expect(page).to have_content('GTIN/UPC Code: 070560951975')
    expect(page).to have_content('GTIN/UPC Code: 076700002019')
    expect(page).to have_content('GTIN/UPC Code: 085239028544')
    expect(page).to have_content('GTIN/UPC Code: 832298010009')
    expect(page).to have_content('GTIN/UPC Code: 8901020020844')
    expect(page).to have_content('GTIN/UPC Code: 095829400193')
    expect(page).to have_content('GTIN/UPC Code: 819614010035')
    expect(page).to have_content('GTIN/UPC Code: 826561500014')
  end
end
