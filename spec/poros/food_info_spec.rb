require "rails_helper"

RSpec.describe "FoodInfo Poros" do
  describe "#initialize" do
    it "exists and has attributes" do
      FoodService.new

      potatos = VCR.use_cassette("food_info") do
        FoodFacade.ten_foods("sweet potatos")
      end

      expect(potatos).to be_a FoodInfo
      # expect(potatos.upc_code).to eq()
      expect(potatos.description).to eq("Bread, sweet potato")
      expect(potatos.brand_owner).to eq("")
      # expect(potatos.ingredients).to eq
    end
  end
end
