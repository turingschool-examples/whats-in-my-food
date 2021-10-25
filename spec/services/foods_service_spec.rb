require 'rails_helper'

describe FoodsService do
  it 'can get all food data' do
    response = FoodsService.foods_query('sweet potatoes')

    expect(response).to be_a(Hash)
    expect(response[:totalHits]).to be_an(Integer)
    foods_data = response[:foods]

    expect(foods_data).to be_an(Array)
    expect(foods_data.first).to have_key(:fdcId)
    expect(foods_data.first).to have_key(:gtinUpc)
    expect(foods_data.first).to have_key(:description)
    expect(foods_data.first).to have_key(:brandOwner)
    expect(foods_data.first).to have_key(:ingredients)
  end
end
