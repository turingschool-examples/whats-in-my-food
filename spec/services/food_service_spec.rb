require 'rails_helper'

describe FoodService do
    context "#food_data" do
        it "returns food data search results" do
            foods = FoodService.food_search('sweet potatoes')
           
            expect(foods).to be_a Hash

            expect(foods).to have_key :totalHits
            expect(foods[:totalHits]).to be_an(Integer)

            expect(foods).to have_key :foods
            expect(foods[:foods]).to be_an(Array)
            expect(foods[:foods][0][:fdcId]).to be_an(Integer)
            expect(foods[:foods][0][:description]).to be_a(String)
            expect(foods[:foods][0][:brandOwner]).to be_a(String)
            expect(foods[:foods][0][:ingredients]).to be_a(String)
        end
    end 
end 