require 'rails_helper'

RSpec.describe FoodsFacade do
 it ".find_foods", :vcr do
   foods = FoodsFacade.find_foods("sweet potatoes")

   expect(foods).to be_a(Array)
   foods.each do |food|
      expect(food).to be_a Food
    end
  end
end
