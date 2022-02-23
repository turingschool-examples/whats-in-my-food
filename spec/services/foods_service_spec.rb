require 'rails_helper'
RSpec.describe FoodsService do
  let(:foods_service) { FoodsService }

  describe '.search_foods' do
    it 'returns foods from a search', :vcr do
        get_foods = foods_service.search_foods("sweet potatoes")
        expect(get_foods).to be_a(Hash)
        expect(get_foods[:foods]).to be_a(Array)
        expect(get_foods[:foods][0]).to have_key(:fdcId)
        expect(get_foods[:foods][0]).to have_key(:description)
        expect(get_foods[:foods][0]).to have_key(:brandOwner)
        expect(get_foods[:foods][0]).to have_key(:ingredients)
      end
    end
  end
