require "rails_helper"

describe "Food facade" do
  describe "class methods" do
    context "#search" do
      it "returns a list of 10 food poros", :vcr do
        results = FoodFacade.search("cheese")

        expect(results.length).to eq(10)
        expect(results.first).to be_a Food
      end
    end
  end
end
