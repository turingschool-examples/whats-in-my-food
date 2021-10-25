require 'rails_helper'

describe FoodClient, :vcr do
  let(:food) { 'chicken' }

  it 'can search for foods' do
    result = FoodClient.search(food)

    expect(result).to be_a(Hash)
    expect(result).to have_key(:totalHits)
    expect(result[:foods].size).to eq(10)
  end
end
