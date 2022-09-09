require 'rails_helper'

RSpec.describe 'Food Search' do
    describe 'happy path' do
        it 'allows a user to search for foods' do
            visit '/'
            
            fill_in "q", with: "sweet potatoes"
            click_button("Search")

            expect(current_path).to eq("/foods")
        end 

        it 'shows the number of returned results' do
            visit '/'
            
            fill_in "q", with: "sweet potatoes"
            click_button("Search")

            expect(current_path).to eq("/foods")

            expect(page).to have_content("Number of results: 49676")
        end 

        it 'returns the top 10 food results' do
            visit '/'
            
            fill_in "q", with: "sweet potatoes"
            click_button("Search")

            expect(current_path).to eq("/foods")

            within "#foods" do
                expect(page.all(".food")[0]).to have_content("SWEET POTATOES")
                expect(page.all(".food")[0]).to have_content(983525)
                expect(page.all(".food")[0]).to have_content("NOT A BRANDED ITEM")
                expect(page.all(".food")[0]).to have_content("ORGANIC SWEET POTATOES.")
                expect(page).to have_selector('.food', count: 10)
            end
        end 
    end 

    describe 'sad path' do
        it 'will not let you search for nothing' do
            visit '/'
            
            click_button("Search")

            expect(current_path).to eq("/")
             expect(page).to have_content("Please submit a query in the search form")
        end 

        it 'will not let you visit the foods page without searching for foods' do
            visit '/foods'

            expect(current_path).to eq("/")
            expect(page).to have_content("Please submit a query in the search form")
        end 
    end 
end 
