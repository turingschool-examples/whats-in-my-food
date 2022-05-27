require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    food = Food.new({gtinUpc: 123123, description: 'its food!', brand_owner: 'Mars', ingredients: 'corn syrup'})
    expect(food).to be_a(Food)
  end
end
