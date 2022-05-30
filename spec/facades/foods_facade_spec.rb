require 'rails_helper'

RSpec.describe FoodsFacade do
  describe 'methods' do
    describe 'get list of foods' do
      it 'returns a list of foods' do
        list = FoodsFacade.get_list_of_foods('sweet potatoes')

        list.each do |food|
          expect(food).to be_a(Food)
        end
      end
    end

    describe 'total of hits' do
      it 'counts the number of results' do
        total = FoodsFacade.search_result_hits('sweet potatoes')

        expect(total).to be_a(Integer)
        expect(total).to be > 0
      end
    end
  end
end
