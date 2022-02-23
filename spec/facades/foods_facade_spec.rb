require 'rails_helper'

RSpec.describe FoodsFacade, type: :facade do
  context 'class methods' do
    describe '::top_20_results', :vcr do
      it 'should return array of 20 food objects' do
        food = FoodsFacade.top_20_results("Sweet potato")

        expect(food).to be_a(Array)
        expect(food[0]).to be_a(Food)
      end
    end
  end
end
