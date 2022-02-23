require 'rails_helper'
RSpec.describe Food do
  describe 'initiailize' do
    it 'exists and has attributes' do
      data = {
        fdcId: '123456',
        description: 'creamy beige',
        brandOwner: 'baileys irish cream',
        ingredients: 'regret'
      }
      food = Food.new(data, 33)
      expect(food.code).to eq(data[:fdcId])
      expect(food.description).to eq(data[:description])
      expect(food.brand).to eq(data[:brandOwner])
      expect(food.ingredients).to eq(data[:ingredients])
      expect(food.total_count).to eq(33)
    end
  end
end
