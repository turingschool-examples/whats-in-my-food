require "rails_helper"

RSpec.describe Food do
    it "exists" do
        data = {
            fdcId: 123456789,
            description: "Tasty",
            brandOwner: "Tiger Foods",
            ingredients: "Potatoes'n'stuff"
        }
    
        food = Food.new(data)
         
        expect(food).to be_a Food
        expect(food.upc).to eq(123456789)
        expect(food.description).to eq("Tasty")
        expect(food.brand).to eq("Tiger Foods")
        expect(food.ingredients).to eq("Potatoes'n'stuff")
    end 
end 