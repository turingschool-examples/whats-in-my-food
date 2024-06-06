require 'rails_helper'

RSpec.describe FoodService, :vcr do 
 
    context 'search_food(food)' do 
        it 'can search for different foods and return food data' do 
            food = FoodService.search_food("sweet potatoes")

            expect(food).to be_a(Hash)

            expect(food).to have_key(:totalHits)
            expect(food[:totalHits]).to be_a(Integer)

            expect(food).to have_key(:foods)
            expect(food[:foods]).to be_a(Array)
            
            food_search_result = food[:foods]

            food_search_result.each do |food|
                expect(food).to have_key(:description)
                expect(food[:description]).to be_a(String)

                expect(food).to have_key(:gtinUpc)
                expect(food[:gtinUpc]).to be_a(String)

                expect(food).to have_key(:brandOwner)
                expect(food[:brandOwner]).to be_a(String)

                expect(food).to have_key(:ingredients)
                expect(food[:ingredients]).to be_a(String)
            end 
        end 
    end 


end 