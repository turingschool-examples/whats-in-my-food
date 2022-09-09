require 'rails_helper'

RSpec.describe FoodService do 
  it "gets data for food ingredient", :vcr do 
    foods = FoodService.get_foods("sweet potatoes")
    # require 'pry'; binding.pry 
    expect(foods).to be_a(Array)
  end
end
