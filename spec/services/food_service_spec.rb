require 'rails_helper'

RSpec.describe 'Food Service' do
  it 'gets a response of branded items from the API' do
    response = FoodService.search_10('sweet potatoes')

    expect(response).to be_a Array
    expect(response[0]).to have_key(:fdcId)
    expect(response[0]).to have_key(:description)
    expect(response[0]).to have_key(:brandOwner)
    expect(response[0]).to have_key(:ingredients)
    expect(response.count).to eq 10
  end

  it 'gets total hits for searched item' do
    response = FoodService.total_hits('sweet potatoes')

    expect(response).to be_a Integer
    expect(response).to eq(48437)
  end
end
