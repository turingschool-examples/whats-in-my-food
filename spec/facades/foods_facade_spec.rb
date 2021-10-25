require 'rails_helper'
RSpec.describe 'foods facade' do

  it 'returns the count of foods that are returned from the search' do
    expect(FoodsFacade.total_items("Turkey")).to be_an(Integer)
    expect(FoodsFacade.total_items("Turkey")).to eq(5380)
  end

  it 'returns the first ten foods as results' do
    expect(FoodsFacade.first_ten_foods("Turkey")).to be_an(Array)
    expect(FoodsFacade.first_ten_foods("Turkey").length).to eq(10)
  end
end 
