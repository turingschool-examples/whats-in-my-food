require 'rails_helper'

describe 'FoodService' do
  it 'reaches the endpoint' do
    result = FoodService.search_foods("sweet potato")

    expect(result.has_key?(:foods)).to eq(true)
    expect(result[[:foodSearchCriteria][:query]]).to eq("sweet potato")
    binding.pry
    # expect(FoodService.search_foods("sweet potato")).to include("Status: 200 ok")

    # expect(FoodService.search_foods("sweet potato")[:status]).to_not eq(404)
    # expect(FoodService.search_foods("sweet potato")[:status]).to eq(200)

    # expect status to be 200

    # expect all returned objects (recipes?) to contain sweet potato as an ingredient

    # expect it to be the right data type

    # expect results count to eq

    # expect to have key fdcId
  end
end
