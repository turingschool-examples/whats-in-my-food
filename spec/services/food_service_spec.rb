require 'rails_helper'

RSpec.describe 'Food API' do
  it 'returns food data' do
    food_data = FoodService.get_details("sweet potatoes")

    expect(food_data).to be_an(Array)
    expect(food_data.first).to be_a(Hash)

    sweet_potato = food_data[0]

    expect(sweet_potato[:gtinUpc]).to eq("492111402857")
    expect(sweet_potato[:foodCategory]).not_to eq("070038322238")
    expect(sweet_potato[:brandOwner]).not_to eq(sweet_potato[:brandName])

  end
end
