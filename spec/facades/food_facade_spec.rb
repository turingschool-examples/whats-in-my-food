require 'rails_helper'

RSpec.describe 'Food Facade' do
  it 'returns data for the searched food' do
    data = FoodFacade.first_10('sweet potatoes')

    expect(data).to be_a Array
    expect(data.first.upc).to eq('8901020020844')
    expect(data.first.description).to eq('SWEET POTATOES')
    expect(data.first.brand).to eq('NOT A BRANDED ITEM')
    expect(data.first.ingredients).to eq('ORGANIC SWEET POTATOES.')
  end

  it 'is the number of hits for the searched food' do
    data = FoodFacade.returned('sweet potatoes')

    expect(data).to be_a Integer
    expect(data).to eq(48437)
  end
end
