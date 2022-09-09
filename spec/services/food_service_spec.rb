require 'rails_helper'

RSpec.describe 'FoodService', :vcr do
    it "returns Food data" do
        food = FoodService.get_foods("sweet potatoes")

        expect(food).to be_a(Hash)
        expect(food).to have_key(:totalHits)
        expect(food[:totalHits]).to be_a(Integer)

        expect(food).to have_key(:foods)
        expect(food[:foods]).to be_a(Array)
    end
end