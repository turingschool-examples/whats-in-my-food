require 'rails_helper'

RSpec.describe FoodsService do
  it 'can return a list of foods' do
    query = 'sweet potatoes'
    result = FoodsService.getting_list(query)

    expect(result).to have_key(:foods)

    expect(result[:foods].first).to have_key(:gtinUpc)
    expect(result[:foods].first[:gtinUpc]).to be_a(String)

    expect(result[:foods].first).to have_key(:description)
    expect(result[:foods].first[:description]).to be_a(String)

    expect(result[:foods].first).to have_key(:brandOwner)
    expect(result[:foods].first[:brandOwner]).to be_a(String)

    expect(result[:foods].first).to have_key(:ingredients)
    expect(result[:foods].first[:ingredients]).to be_a(String)

    expect(result[:totalHits]).to eq(49652)
    expect(result[:totalPages]).to eq(994)
    
  end
end
