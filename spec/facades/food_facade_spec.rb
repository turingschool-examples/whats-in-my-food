require "rails_helper"

RSpec.describe FoodFacade do
  it 'can make food objects' do
    results = FoodFacade.food_search('sweet potatoes')

    expect(results).to be_a(Array)
    expect(results.length).to eq(10)
    expect(results.first).to be_a(Food)
  end
end
