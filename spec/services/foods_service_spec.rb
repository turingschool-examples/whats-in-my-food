require 'rails_helper'

RSpec.describe FoodsService, :vcr do
  it 'gets data for 10 foods based on keyword search' do
    results = FoodsService.search_ingredient('cheddar cheese')
    
    expect(results).to be_an Hash
    expect(results[:foods].count).to eq(10)
    expect(results[:foods][0][:gtinUpc]).to eq("75925306223")
    expect(results[:foods][0][:brandOwner]).to eq("Three Square Inc.")
  end

end