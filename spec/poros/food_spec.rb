require 'rails_helper'

RSpec.describe Food do
  it 'exists and has the correct attributes' do
    # response = JSON.parse(File.read('spec/fixures/food_search_response.json'), symbolize_names: true)
    # food_results = Food.new(response)
    
    response = {
      "totalHits": 49676,
      "foodSearchCriteria": {
          "query": "sweet-potato",
          "generalSearchInput": "sweet-potato",
      },
      "foods": [
          {
            "fdcId": 1100678,
            "description": "Bread, sweet potato",
            "lowercaseDescription": "bread, sweet potato",
          }
        ]
      }

    food_results = Food.new(response)

    expect(food_results.total_hits).to eq(49676)
    expect(food_results.description.first).to eq("bread, sweet potato")
  end
end