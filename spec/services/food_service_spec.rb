require 'rails_helper'

RSpec.describe FoodService do
  describe 'search_foods' do
    it 'returns foods from a search' do
        get_foods = FoodService.call_for_a_food("sweet potatoes")
        expect(get_foods).to be_a(Hash)
        expect(get_foods[:foods]).to be_a(Array)
        expect(get_foods[:foods][0]).to have_key(:fdcId)
        expect(get_foods[:foods][0]).to have_key(:description)
        expect(get_foods[:foods][0]).to have_key(:brandOwner)
        expect(get_foods[:foods][0]).to have_key(:ingredients)
    end
  end
end
