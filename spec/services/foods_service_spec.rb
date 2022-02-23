require 'rails_helper'

describe FoodsService do
  context 'class methods' do
    context '#search_term' do
      it 'returns food data' do
        search = FoodsService.search_term('sweet potatoes')
        expect(search).to be_a Hash
        expect(search[:foods]).to be_an Array
        food_data = search[:foods].first

        expect(food_data).to have_key :gtinUpc
      end
    end
  end
end
