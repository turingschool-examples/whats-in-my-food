require 'rails_helper'

RSpec.describe FoodsService do

  describe '#search_foods' do
    it 'returns foods from the search', :vcr do
      get_foods = FoodsService.search_foods("sweet potatoes")
# require 'pry'; binding.pry
      expect(get_foods).to be_a(Hash)
      expect(get_foods[:foods]).to be_a(Array)
      expect(get_foods[:foods][0]).to have_key(:fdcId)
      expect(get_foods[:foods][0][:fdcId]).to eq(451884)
      expect(get_foods[:foods][0]).to have_key(:lowercaseDescription)
      expect(get_foods[:foods][0][:lowercaseDescription]).to eq("sweet potatoes")
      expect(get_foods[:foods][0]).to have_key(:brandOwner)
      expect(get_foods[:foods][0][:brandOwner]).to eq("NOT A BRANDED ITEM")
      expect(get_foods[:foods][0]).to have_key(:foodCategory)
      expect(get_foods[:foods][0][:foodCategory]).to eq("Pre-Packaged Fruit & Vegetables")
    end
  end
end
