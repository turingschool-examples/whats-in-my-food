require "rails_helper"

RSpec.describe "Foods Service" do
  it "returns search results" do
    response = FoodsService.get_search("sweet potatoes")

    expect(response).to be_a(Hash)
    expect(response.count).to eq(7)
    expect(response[:foods]).to be_an(Array)
  end
end
