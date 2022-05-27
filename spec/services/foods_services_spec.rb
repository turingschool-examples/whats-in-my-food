require 'rails_helper'

RSpec.describe FoodsService do
  it 'returns json with specific keys' do
    service = FoodsService.search_foods("potatoes")

    expect(service).to have_key(:totalHits)
    expect(service[:totalHits]).to be_an Integer
    expect(service).to have_key(:foods)
    expect(service[:foods]).to be_an Array
    service[:foods].each do |food|
      expect(food).to be_a Hash
      expect(food).to have_key(:description)
      expect(food).to have_key(:gtinUpc)
      expect(food).to have_key(:brandOwner)
      expect(food).to have_key(:ingredients)
    end
  end
end
