require 'rails_helper'

RSpec.describe 'foods facade' do

  it 'returns total foods count from the search' do
    expect(FoodsFacade.total_items("sweet potatoes")).to be_an(Integer)
    expect(FoodsFacade.total_items("sweet potatoes")).to eq(49652)
  end

  it 'returns first ten foods' do
    expect(FoodsFacade.first_ten_foods("sweet potatoes")).to be_an(Array)
    expect(FoodsFacade.first_ten_foods("sweet potatoes").count).to eq(10)
  end
end
