require 'rails_helper'

RSpec.describe FoodFacade do
      it 'returns Food data', :vcr do
        food_results = FoodFacade.find_food("sweet potatoes")

        expect(food_results.first.gtin_upc).to eq("8901020020844")
        expect(food_results).to be_a(Array)
        food_results.each do |result|
          expect(result).to be_a(Food)
        end
      end
    end
