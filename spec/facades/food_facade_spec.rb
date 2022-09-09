require 'rails_helper'

RSpec.describe FoodFacade do
    it 'reads data from api' do
        foods = FoodFacade.search_list_by_food('sweet potato')
        
        expect(foods).to be_a Array
        expect(foods).to be_all Food
    end
end