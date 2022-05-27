require 'rails_helper'

RSpec.describe 'foods facade' do
  describe 'class methods' do
    it '#ten_foods' do
      list = FoodsFacade.ten_foods('honey')
      expect(list.first).to be_a(Food)
      expect(list).to be_a(Array)
    end
  end
end
