require "rails_helper"

RSpec.describe "foods facade" do
  describe "search_foods" do
    it "returns an array of an array of Food objects and a total hits integer" do
      expect(FoodsFacade.search_foods("Sweet")).to be_a(Array)
      expect(FoodsFacade.search_foods("Sweet")[0]).to be_a(Array)
      expect(FoodsFacade.search_foods("Sweet")[0].sample(1)[0]).to be_a(Food)
      expect(FoodsFacade.search_foods("Sweet")[1]).to be_a(Integer)
    end

    it "allows returns of different page sizes" do
      expect(FoodsFacade.search_foods("Sweet")[0].length).to eq(10)
      expect(FoodsFacade.search_foods("Sweet", 50)[0].length).to eq(50)
    end
  end
end
