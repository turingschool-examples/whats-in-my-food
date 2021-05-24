require 'rails_helper'

RSpec.describe FoodFacade do
  it 'formats all desired info' do
    results = FoodFacade.foods_by_ingredient('sweet potatoes')

    expect(results.total_results).to eq(44128)
    expect(results.query).to eq('Sweet potatoes')
    expect(results.foods.count).to eq(10)
  end
end