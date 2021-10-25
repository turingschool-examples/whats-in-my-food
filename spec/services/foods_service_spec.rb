require 'rails_helper'

RSpec.describe 'foods service' do
  it 'can return a list of foods' do
    response = FoodsService.search_foods('sweet%20potatoes')

    expect(response).to be_a(Hash)
    expect(response).to have_key(:totalHits)
    expect(response).to have_key(:foods)
    expect(response[:foods]).to be_an(Array)
    expect(response[:foods].first).to have_key(:fdcId)
  end
end
