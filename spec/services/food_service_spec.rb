require 'rails_helper'

RSpec.describe 'FoodService', :vcr do
    it "returns Food data" do
        foods = FoodService.get_foods

        expect(foods).to be_a(Hash)
    end
end