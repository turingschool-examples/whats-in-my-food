require 'rails_helper'

RSpec.describe 'FoodService' do 

  it "returns a collection of food from a search" do
    results = FoodService.foods_by_search("sweet potatoes")

    expect(results).to be_a(Hash)
    expect(results[:foods]).to be_a(Array)
    expect(results[:foods].first).to have_key(:description)
    expect(results[:foods].first).to have_key(:gtinUpc)
    expect(results[:foods].first).to have_key(:brandOwner)
    expect(results[:foods].first).to have_key(:ingredients)
  end
end