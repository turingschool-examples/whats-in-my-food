require "rails_helper"

RSpec.describe FoodService do
  describe "API repo endpoint" do
    it "gets food data from  endpoint", :vcr do
      json = FoodService.get_food_data
      expect(json).to have_key(:description)
    end
  end
end
