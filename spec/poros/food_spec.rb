require 'rails_helper'

RSpec.describe 'food class' do

  it 'is an instance of Food and holds data' do
    food1 = Food.new(fdcId: 17897, gtinUpc: 1000056, description: 'Apple', brandOwner: 'Apple.inc', ingredients: "apple")

    expect(food1).to be_an_instance_of(Food)

    expect(food1.id).to eq(17897)
    expect(food1.gtinupc_code).to eq(1000056)
    expect(food1.description).to eq('Apple')
    expect(food1.brand_owner).to eq('Apple.inc')
    expect(food1.ingredients).to eq("apple")
  end
end
