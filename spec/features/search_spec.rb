require 'rails_helper'

RSpec.describe 'Food Search' do
    describe 'happy path' do
        it 'allows a user to search for foods' do
            visit '/'
            
            fill_in "search", with: "Toy Story"
            click_button("Search")

            expect(current_path).to eq("/foods")
        end 
    end 
end 
