require 'rails_helper'

RSpec.describe 'foods service' do
  it 'total_foods' do
    response = FoodsService.total_foods("sweet%20potatoes")

    expect(response).to be_an(Hash)
    expect(response).to have_key(:totalHits)
  end

  it '#search_foods' do
    response = FoodsService.search_foods('sweet%20potatoes')

    expect(response).to be_an(Array)
    expect(response.first).to have_key(:gtinUpc)
    expect(response.first).to have_key(:description)
    expect(response.first).to have_key(:brandOwner)
    expect(response.first).to have_key(:ingredients)
  end
end
