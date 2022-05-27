require 'rails_helper'

RSpec.describe FoodService do

  it 'returns food data as JSON' do

    search = FoodService.search_for_food('pork')
    expect(search).to be_an Array


    expect(search[0]).to have_key(:brandOwner)

  end 

end 