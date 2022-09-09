require 'rails_helper'

RSpec.describe 'Foods Service' do

  it "returns the find_food api call by keyword" do
    results = FoodsService.find_food('sweet potatoes')

    expect(results).to be_a(Hash)
    expect(results[:foods]).to be_a(Array)
    expect(results[:foods].first).to have_key(:description)
    expect(results[:foods].first).to have_key(:gtinUpc)
    expect(results[:foods].first).to have_key(:brandOwner)
    expect(results[:foods].first).to have_key(:ingredients)
  end

end
