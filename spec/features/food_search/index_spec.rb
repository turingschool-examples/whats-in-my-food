require 'rails_helper'

RSpec.describe 'The foods index' do
  it 'submitting the form on the welcome page takes you to /foods' do
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)  
  end

  it 'displays the total number of results' do
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
    
    expect(page).to have_content("Total # of Results: 49652") 
  end

  it 'displays the first 10 results on the page' do
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(page).to have_css('.food', count: 10)
  end

  it 'next to each food is its GTIN/UPC code, description, brand owner, and ingredients' do
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    within '#food-result-451884' do
      expect(page).to have_content("Description: Sweet Potatoes")
      expect(page).to have_content('GTIN/UPC: 832298010009') 
      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients: ")
    end

    within '#food-result-983525' do
      expect(page).to have_content("Description: Sweet Potatoes")
      expect(page).to have_content('GTIN/UPC: 8901020020844') 
      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")
    end

    within '#food-result-1929370' do
      expect(page).to have_content("Description: Sweet Potatoes")
      expect(page).to have_content('GTIN/UPC: 076700002019') 
      expect(page).to have_content("Brand Owner: John W. Taylor Packing Co. Inc")
      expect(page).to have_content("Ingredients: SWEET POTATOES")
    end
  end
end
