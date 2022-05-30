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





# describe 'methods' do
#   it 'can get list of foods' do
#     first_food = {
#                   :gtinUpc=> "832298010009",
#                   :description=> "SWEET POTATOES",
#                   :brandOwner=> "NOT A BRANDED ITEM",
#                   :ingredients=> ""
#                 }
#
#     query = 'sweet potatoes'
#     result = FoodsFacade.get_list_of_foods(query)
#
#     expect(result.first.gtinUpc).to eq(first_food[:gtinUpc])
#     expect(result.first.description).to eq(first_food[:description])
#     expect(result.first.brandOwner).to eq(first_food[:brandOwner])
#     expect(result.first.ingredients).to eq(first_food[:ingredients])
#
#     expect(result.count).to eq(10)
#   end
#
# end
