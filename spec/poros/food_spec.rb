require 'rails_helper' 

RSpec.describe 'Food' do 
  it 'exists and has proper Food attributes' do 
    response = file_fixture('sample_food_data.txt').read 

    data = JSON.parse(response, symbolize_names: true)

    food = Food.new(data)

    expect(food).to be_a Food 
    expect(food.description).to eq data[:description]
    expect(food.code).to eq data[:gtinUpc]
    expect(food.brand).to eq data[:brandOwner]
    expect(food.ingredients).to eq data[:ingredients]
  end
end