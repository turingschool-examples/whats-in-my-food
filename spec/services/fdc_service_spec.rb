require 'rails_helper'

RSpec.describe 'fdc service' do
  before :each do
    query = "apple"
    @results = FdcService.search(query)
  end

  it 'returns 10 results with attributes & total result count' do
    expect(@results).to have_key(:totalHits)
    expect(@results[:foods].count).to eq(10)
    expect(@results[:foods].first).to have_key(:gtinUpc)
    expect(@results[:foods].first).to have_key(:description)
    expect(@results[:foods].first).to have_key(:brandOwner)
    expect(@results[:foods].first).to have_key(:ingredients)
  end
end
