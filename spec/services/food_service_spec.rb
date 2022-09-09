require 'rails_helper'

RSpec.describe FoodService do
    it 'gets data from api' do
        foods = FoodService.search_food('cheese') 
        require 'pry'; binding.pry 
        expect(foods).to be_a(Hash)      
    end
end