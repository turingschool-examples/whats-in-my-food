require 'rails_helper'

describe FoodsService do
  it 'exists' do
    foods_service  = FoodsService.new
    expect(foods_service).to be_an_instance_of(FoodsService)
  end

  it 'retrieves reviews'do
    food_input    =  "sweet potatoes"
    respsonse     = FoodsService.search_by_food_db(food_input)

    expect(respsonse).to be_a(Hash)
    expect(respsonse).to have_key(:totalHits)
    expect(respsonse).to have_key(:foods)

    expect(respsonse[:foods]).to be_an(Array)
    expect(respsonse[:foods][0]).to be_a(Hash)

    expect(respsonse[:foods][0]).to have_key(:fdcId)
    expect(respsonse[:foods][0][:fdcId]).to be_an(Integer)

    expect(respsonse[:foods][0]).to have_key(:description)
    expect(respsonse[:foods][0][:description]).to be_a(String)

    expect(respsonse[:foods][0]).to have_key(:brandOwner)
    expect(respsonse[:foods][0][:brandOwner]).to be_a(String)

    expect(respsonse[:foods][0]).to have_key(:ingredients)
    expect(respsonse[:foods][0][:ingredients]).to be_a(String)
  end
end