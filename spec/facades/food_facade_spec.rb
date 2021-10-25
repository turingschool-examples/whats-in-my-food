require 'rails_helper'

RSpec.describe 'food facade' do
  before :each do
    query = "apple"
    @results = FoodFacade.search(query)
  end

  it 'returns total count and top 10 search results from query' do

    expect(@results[:total_hits]).to eq(21874)
    expect(@results[:top_ten].length).to eq(10)
    expect(@results[:top_ten].first.upc).to eq("070038322238")
    expect(@results[:top_ten].first.description).to eq("APPLE")
    expect(@results[:top_ten].first.brand_owner).to eq("Associated Wholesale Grocers, Inc.")
    expect(@results[:top_ten].first.ingredients).to eq("FILTERED WATER, APPLE JUICE CONCENTRATE, ASCORBIC ACID (VITAMIN C).")
  end
end
