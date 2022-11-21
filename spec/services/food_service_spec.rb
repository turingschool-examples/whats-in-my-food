require 'rails_helper'

RSpec.describe FoodService do 
  it "gets data for food ingredient", :vcr do 
    foods = FoodService.get_foods("sweet potatoes") 
    # require 'pry'; binding.pry 
    expect(foods).to be_a(Hash)
    expect(foods[:foods]).to be_a(Array) #includes more assertions
    expect(foods[:foods][0]).to have_key(:description)
    expect(foods[:foods][0]).to have_key(:fdcId)
    expect(foods[:foods][0]).to have_key(:brandOwner)
    expect(foods).to have_key(:totalHits)
  end
end
