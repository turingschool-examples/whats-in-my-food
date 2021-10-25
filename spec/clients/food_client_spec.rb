require 'rails_helper'

describe FoodClient, :vcr do
  let(:food) { 'sweet potatoes' }

  it 'can search for foods' do
    result = FoodClient.search(food)

    expect(result).to be_an(Array)
    expect(result.size).to eq(10)
  end
end
