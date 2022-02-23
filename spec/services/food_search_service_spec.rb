require 'rails_helper'

RSpec.describe FoodSearchService do

  before :each do
    @_service = FoodSearchService.new
  end

  it 'can search for foods', :vcr do
    foods = @_service.search_foods('cheddar cheese')
  end

end
