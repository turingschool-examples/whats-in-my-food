require 'rails_helper'

RSpec.describe FoodsFacade, :vcr do
  describe "search results" do
    it "returns an array of foods that match the keyword" do
      foods = FoodsFacade.search_by_keyword("sweet potatoes")

      expect(foods).to be_an(Array)
      expect(foods.first).to be_an_instance_of(Food)
      expect(foods.last).to be_an_instance_of(Food)
    end
  end
end