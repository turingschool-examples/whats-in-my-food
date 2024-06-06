require 'rails_helper'

RSpec.describe 'foods index page', :vcr do 

    it 'displays the total number of results returned by a search' do 
        visit root_path
        fill_in :q, with: "sweet potatoes"

        click_on "Search"

        expect(page).to have_content("Total Hits: 49676")
    end 

    it 'lists food attributes' do 
        visit root_path
        fill_in :q, with: "sweet potatoes"
        click_on "Search"

        expect(page).to have_content("Description: SWEET POTATOES")
        expect(page).to have_content("GTIN/UPC code: 8901020020844")
        expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
        expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES.")
    end 
end 