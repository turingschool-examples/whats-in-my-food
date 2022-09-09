require 'rails_helper'

RSpec.describe FoodService do
  it 'can return foods' do
    user_query = 'sweet potato'
    result = FoodService.get_food_details(user_query)

    expect(result).to have_key(:foods)

    expect(result[:foods].first).to have_key(:gtinUPC)
  end
end
