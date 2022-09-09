require 'rails_helper'

RSpec.describe 'Food DB Service' do 
  it 'retrieves data for search food' do 
    parsed_json = FoodDBService.get_searched_foods("sweet potatoes")

    expect(parsed_json).to be_a Hash
    expect(parsed_json[:totalHits]).to be_a Integer

    first_food_object = parsed_json[:foods][0]
    expect(first_food_object).to include(:description, :gtinUpc, :brandOwner, :ingredients)
    expect(first_food_object[:description]).to be_a String
    expect(first_food_object[:gtinUpc]).to be_a String
    expect(first_food_object[:brandOwner]).to be_a String
    expect(first_food_object[:ingredients]).to be_a String
  end
end



