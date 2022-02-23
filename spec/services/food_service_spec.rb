require 'rails_helper'

RSpec.describe FoodService do
  context ' class methods ' do
    context 'search for foods' do
      it 'returns food data ' do
        all_foods = FoodService.foods('Sweet Potato')

        expect(all_foods).to be_a Hash
        expect(all_foods[:foods]).to be_an Array
        expect(all_foods[:totalHits]).to be_an(Integer)

        all_foods[:foods].each do |food|
          expect(food).to have_key(:fdcId)
          expect(food[:fdcId]).to be_a(Integer)

          expect(food).to have_key(:description)
          expect(food[:description]).to be_a(String)

        end
      end
    end
  end
end
