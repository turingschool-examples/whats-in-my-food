require 'rails_helper'

RSpec.describe FoodSearchService do

  before :each do
    @_service = FoodSearchService.new
  end

  it 'can search for foods', :vcr do
    query = 'cheddar cheese'
    foods = @_service.search_foods(query)

    expect(foods).to be_a Hash
    expect(foods[:foods]).to be_an Array
    expect(foods[:foodSearchCriteria][:query]).to eq(query)
  end

end
