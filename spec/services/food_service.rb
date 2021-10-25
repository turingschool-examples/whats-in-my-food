require "rails_helper"

RSpec.describe FoodService do
  before :each do
    @service = FoodService.new
  end

  it "exists" do
    expect(@service).to be_a(FoodService)
  end

  describe "instance methods" do
    it "can connect to the server" do
      response = @service.request_api("sweet potatos")

      expect(response).to have_key(:foods)
      expect(response[:foods]).to be_an(Array)
    end
  end
end
