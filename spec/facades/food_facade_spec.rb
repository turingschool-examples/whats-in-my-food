require 'rails_helper'

RSpec.describe FoodFacade do
  it 'Can return top 10 food results' do
    results = FoodFacade.top_foods("sweet potatoes")
    expect(results).to be_a Hash
    expect(results[:hits]).to eq 37761
    expect(results[:foods]).to be_a Array
    expect(results[:foods].count).to eq 10
    expect(results[:foods]).to be_all Food
  end
end