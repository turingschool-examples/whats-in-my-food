require 'rails_helper'

RSpec.describe FoodService, :vcr do
  it 'returns array of foods' do
    result = FoodService.foods("sweet potatoes")
    expect(result).to be_a(Hash)
    expect(result[:foods]).to be_a(Array)
    expect(result[:foods][0][:fdcId]).to eq(1929370)
    expect(result[:foods][0]).to have_key :fdcId
    expect(result[:foods][0][:fdcId]).to be_a Integer
  end
end
