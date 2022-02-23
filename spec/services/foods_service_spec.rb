require 'rails_helper'

RSpec.describe FoodsService, type: :service do
  context 'class methods', :vcr do
    describe '::conn' do
      it 'returns Faraday connection' do
        foods = FoodsService.conn

        expect(foods).to be_a(Faraday::Connection)
      end
    end

    describe '::get_foods' do
     it 'returns hash of foods details' do
       foods = FoodsService.get_foods("Sweet potato")

       expect(foods).to be_a(Hash)
     end
   end
  end
end
