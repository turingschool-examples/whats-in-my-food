require 'rails_helper'

RSpec.describe 'Food Facade' do
 it "gets foods" do
   foods = FoodFacade.get_foods("sweet potatoes")
   expect(foods).to be_a(Array)
  end
end
  
