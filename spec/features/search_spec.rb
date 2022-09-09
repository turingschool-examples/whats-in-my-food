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
    end 
end 
