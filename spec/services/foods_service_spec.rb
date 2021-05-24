require "rails_helper"

RSpec.describe FoodsService do
  it "returns correct structure for search foods method" do
    response = FoodsService.search_food("sweet potatoes")
    expect(response).to be_a(Hash)
    expect(response[:foods]).to be_a(Array)
    expect(response[:foods][1]).to have_key(:gtinUpc)
    expect(response[:results][1][:gtinUPC]).to be_a(String)
  end
end
