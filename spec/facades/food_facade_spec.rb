require 'rails_helper'

RSpec.describe FoodFacade do
  it '#food_search' do
    facade = FoodFacade.new
    expect(facade.food_search("sweet potatoes")).to be_an Array
    expect(facade.food_search("sweet potatoes").first.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end
