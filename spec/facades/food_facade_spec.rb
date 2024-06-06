require 'rails_helper'

RSpec.describe FoodFacade, :vcr do 

    it 'returns food data of the searched food' do 
        search = FoodFacade.food_finder("sweet potatoes") 

        expect(search).to be_a(Array)
    end 

end 