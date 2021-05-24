RSpec.describe 'Food Services' do
  describe 'food_search(food)' do
    it 'returns relevant foods' do
      search = FoodService.call_for_a_food("sweet potatoes")
      expect(search).to be_a(Hash)
      expect(search[:results]).to be_an(Array)
    end

  end
end