require 'rails_helper'

RSpec.describe FoodService do

  describe '#search_foods' do
    it 'returns foods from the search', :vcr do
      get_foods = FoodsService.search_foods("sweet potatoes")
    end
  end
end
