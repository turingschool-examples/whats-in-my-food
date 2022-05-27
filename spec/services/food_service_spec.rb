require "rails_helper"

describe "food service" do
  context "class methods" do
    context "#search" do
      it "returns foods related to search results", :vcr do
        search_response = FoodService.search("cheese")

        expect(search_response).to be_a Hash
        expect(search_response[:foods]).to be_an Array
        expect(search_response[:foods].first).to be_a Hash
      end
    end
  end
end
