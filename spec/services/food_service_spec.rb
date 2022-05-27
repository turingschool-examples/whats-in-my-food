require 'rails_helper'

describe 'FoodService' do
  it 'reaches the endpoint' do
    expect(FoodService.search(food)).to eq("something")
  end
end
