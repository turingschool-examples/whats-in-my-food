require 'rails_helper'
describe FoodFacade do
  context "class methods" do
    context ".find_foods_by_ingredient" do
      it "returns array of foods OBJECT data", :vcr do
        all_foods = FoodFacade.find_foods_by_ingredient("sweet potatoes")
        expect(all_foods).to be_a Array
        expect(all_foods.count).to eq(10)

        food = all_foods.first
        expect(food).to be_a Food
        expect(food.gtinupc).to be_a(String)
        expect(food.description).to be_a(String)
        expect(food.brandowner).to be_a(String)
        expect(food.ingredients).to be_a(String)
      end
      
      it "finds the number of results", :vcr do
        results = FoodFacade.find_number_of_results("sweet potatoes")
        expect(results).to be_a Integer
      end
    end
  end
end