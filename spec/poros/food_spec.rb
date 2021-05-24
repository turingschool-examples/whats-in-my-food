require "rails_helper"

describe 'Food' do
  it 'exists' do
    new_food = Food.new(dishes_including_ingredient[:foods][0], dishes_including_ingredient[:totalHits])
    expect(new_food).to be_an_instance_of(Food)
  end

  it 'it has attributes' do
    new_food = Food.new(dishes_including_ingredient[:foods][0], dishes_including_ingredient[:totalHits])

    expect(new_food.description).to eq('Sweet Potatoes')
    expect(new_food.gtin_upc_code).to eq('492111402857')
    expect(new_food.brand_owner).to eq('Archer Farms')
    expect(new_food.total_found).to eq(44128)
    expect(new_food.ingredients).to eq('SWEET POTATOES.')
  end
end
