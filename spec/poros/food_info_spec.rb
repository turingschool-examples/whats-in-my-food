require "rails_helper"

RSpec.describe "FoodInfo Poros" do
  describe "#initialize" do
    it "exists and has attributes" do
      FoodService.new

      potatos = VCR.use_cassette("food_info") do
        FoodFacade.ten_foods("sweet potatos")
      end

      expect(potatos[0]).to be_a FoodInfo
      # expect(potatos[0].upc_code).to eq()
      expect(potatos[0].description).to eq("Bread, sweet potato")
      expect(potatos[0].brand_owner).to eq()
      expect(potatos[0].ingredients).to eq()
    end
  end
end
