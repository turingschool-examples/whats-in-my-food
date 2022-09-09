require 'rails_helper' 

RSpec.describe 'FoodService' do 
  it 'retrieves 10 Food data that matches search query' do 
    parsed_json = FoodService.search_food('sweet potatoes')

    expect(parsed_json).to be_a Hash
    expect(parsed_json[:foods]).to be_an Array
    expect(parsed_json[:foods].count).to eq 10 

    sample_data = parsed_json[:foods].first

    expect(sample_data).to include(:description, :gtinUpc, :brandOwner, :ingredients)
    expect(sample_data[:description]).to be_a String
    expect(sample_data[:gtinUpc]).to be_a String
    expect(sample_data[:brandOwner]).to be_a String
    expect(sample_data[:ingredients]).to be_a String
  end
end