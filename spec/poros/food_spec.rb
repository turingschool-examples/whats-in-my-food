require 'rails_helper'

RSpec.describe 'Food', type: :poros do
  it 'has attributes' do
    foods = FoodFacade.first_10('sweet potatoes')
    sp1 = foods[0]
    sp2 = foods[1]

    expect(foods).to be_a Array
    expect(sp1.upc).to eq('8901020020844')
    expect(sp1.description).to eq('SWEET POTATOES')
    expect(sp1.brand).to eq('NOT A BRANDED ITEM')
    expect(sp1.ingredients).to eq('ORGANIC SWEET POTATOES.')
    expect(sp2.upc).to eq('832298010009')
    expect(sp2.description).to eq('SWEET POTATOES')
    expect(sp2.brand).to eq('NOT A BRANDED ITEM')
    expect(sp2.ingredients).to eq('')
  end
end
