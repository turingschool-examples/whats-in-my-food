require "rails_helper"

describe FoodsFacade do
  describe "class methods" do
    describe "#search_by_ingredient" do
      it "returns as Food POROs all search results with ingredients containing the search query" do
        sweet_pots = FoodsFacade.search_by_ingredient("sweet potatoes")

        expected_types = sweet_pots.all? { |sweet_pot| sweet_pot.instance_of?(Food) }
        expected_ingredients = sweet_pots.all? { |sweet_pot| !sweet_pot.ingredients.empty? }

        expect(expected_types).to be true
        expect(expected_ingredients).to be true
      end
    end
  end
end
