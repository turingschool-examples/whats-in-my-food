require 'rails_helper'

describe FoodPoro do
  let(:data) do
    {
      lowercaseDescription: 'hello world',
      gtinUpc: 12345,
      brandOwner: 'Velveta',
      ingredients: 'chicken, noodles, broth'
    }
  end
  let(:poro) { FoodPoro.new(data) }

  it 'has attributes' do
    expect(poro.upc_code).to eq(12345)
    expect(poro.description).to eq('hello world')
    expect(poro.brand_owner).to eq('Velveta')
    expect(poro.ingredients).to eq(%w[chicken noodles broth])
  end
end
