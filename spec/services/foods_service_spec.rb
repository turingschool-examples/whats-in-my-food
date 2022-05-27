require "rails_helper"

RSpec.describe "Foods Service" do
  it "returns search results" do
    response = FoodsService.get_search("sweet potatoes")

    expect(response).to be_an(Array)
  end
end
