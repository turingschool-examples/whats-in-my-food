require 'rails_helper'

RSpec.describe FoodService do
  it 'can find a food by type' do
    VCR.use_cassette('foods_for_sweet_potatoes') do
    expect(FoodService.get_foods_by_type("sweet potatoes")).to be_a(Hash)
    expect(FoodService.get_foods_by_type("sweet potatoes")[:totalHits]).to be_an(Integer)
    expect(FoodService.get_foods_by_type("sweet potatoes")).to have_key(:foods)

    food_data = FoodService.get_foods_by_type("sweet potatoes")[:foods][0]

    expect(food_data).to have_key(:gtinUpc)
    expect(food_data[:gtinUpc]).to be_a(String)
    expect(food_data).to have_key(:description)
    expect(food_data[:description]).to be_a(String)
    expect(food_data).to have_key(:brandOwner)
    expect(food_data[:brandOwner]).to be_a(String)
    expect(food_data).to have_key(:ingredients)
    expect(food_data[:ingredients]).to be_a(String)
  end
  end
end
