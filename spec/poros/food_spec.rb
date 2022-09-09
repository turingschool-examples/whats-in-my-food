require 'rails_helper'

RSpec.describe Food do 
    xit 'exists' do 
        food = Food.new(total_hits: 1, description: "liter of cola", code: "123", brand_owner: "Coca-Cola", ingredients: "crushed dreams")
        expect(food).to be_an_instance_of(Food)
    end 
end 