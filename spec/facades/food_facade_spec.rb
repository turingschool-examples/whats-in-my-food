require 'rails_helper'

RSpec.describe FoodFacade do
  it 'Can return top 10 food results' do
    foods = FoodFacade.top_foods("sweet potatoes")
    expect(foods).to be_a Hash
    expect(foods[:hits]).to eq 37761
    expect(foods[:foods]).to be_a Array
    expect(foods[:foods].count).to eq 10
    expect(foods[:foods]).to be_all Food
  end
end