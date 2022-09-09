require 'rails_helper'

RSpec.describe 'Food Facade' do

  it "returns fods containing a keyword" do
    foods = FoodsFacade.get_foods('sweet potatoes')

    expect(foods).to be_an(Array)
    expect(foods).to be_all(Food)
  end

  it "returns the count of foods containing the key word" do
    count = FoodsFacade.count_foods('sweet potatoes')

    expect(count).to eq(44128)
  end
end
