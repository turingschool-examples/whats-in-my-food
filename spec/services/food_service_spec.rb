require 'rails_helper'

RSpec.describe FoodService do
    it 'gets data from api' do
        foods = FoodService.search_food('cheese') 
 
        expect(foods).to be_a(Hash)      
    end
end