require 'rails_helper'

RSpec.describe FoodService do

  it 'returns food data as JSON' do

    search = FoodService.search_for_food('pork')
    expect(search).to be_a Hash
    expect(search[:foods]).to be_a Array

    expect(search[:foods]).to have_key(:brandOwner)

  end 

end 