require 'rails_helper' 

RSpec.describe 'FoodFacade' do 
  it 'returns an array of Food objects' do 
    foods = FoodFacade.search('sweet potatoes')

    expect(foods).to be_an Array 
    expect(foods).to be_all Food 
  end

  it 'returns the total number of hits returned by search' do 
    count = FoodFacade.hit_count('sweet potatoes')

    expect(count).to eq 49676
  end
end