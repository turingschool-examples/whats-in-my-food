require 'rails_helper'

describe 'FoodService' do
  it 'reaches the endpoint' do
    expect(FoodService.search_foods("sweet potato")).to eq("something")
    binding.pry

    # expect status to be 200

    # expect all returned objects (recipes?) to contain sweet potato as an ingredient

    # expect it to be the right data type

    # expect results count to eq

    # expect to have key fdcId
  end
end
