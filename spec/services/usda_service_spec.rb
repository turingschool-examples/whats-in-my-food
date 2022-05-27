require "rails_helper"

describe UsdaService do
  describe "class methods" do
    describe "search" do
      it "returns all of the search results for some query passed in as an argument" do
        sweet_pots = UsdaService.search("sweet potatoes")

        expect(sweet_pots).to be_a Hash
        expect(sweet_pots[:foods]).to be_an Array
        expect(sweet_pots[:foods][0]).to be_a Hash
      end
    end
  end
end
