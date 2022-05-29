require "rails_helper"

RSpec.describe FoodsService do
  describe "API food endpoint" do
    it "gets food data from endpoint", :vcr do
      json = FoodsService.get_food_data("sweet potatoes")
      expect(json[:foodSearchCriteria][:query]).to eq("sweet potatoes")
      expect(json[:foods][0]).to have_key(:description)
    end
  end
end
