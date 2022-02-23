require 'rails_helper'

RSpec.describe FoodsClient do
  let(:foods_client) { FoodsClient }
  describe '::search_foods' do
    it 'returns a json response of foods matching that critera' do
      VCR.use_cassette('sweet_potatoes') do
        potatoes = foods_client.search_foods('sweet potatoes')

        expect(potatoes).to be_a Hash
        expect(potatoes[:foods]).to be_a Array
        expect(potatoes[:foods][0]).to have_key(:description)
        expect(potatoes[:foods][0][:description]).to be_a(String)
        expect(potatoes[:foods][0]).to have_key(:brandOwner)
        expect(potatoes[:foods][0][:brandOwner]).to be_a(String)
        expect(potatoes[:foods][0]).to have_key(:ingredients)
        expect(potatoes[:foods][0][:ingredients]).to be_a(String)
        expect(potatoes[:foods][0]).to have_key(:gtinUpc)
        expect(potatoes[:foods][0][:gtinUpc]).to be_a(String)
      end
    end
  end
end
