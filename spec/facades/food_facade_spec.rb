require 'rails_helper'

RSpec.describe FoodFacade, :vcr do
  it 'finds food by keyword' do
    food = FoodFacade.foods_by_keyword("sweet potatoes")

    expect(food).to be_a Array
  end
end
