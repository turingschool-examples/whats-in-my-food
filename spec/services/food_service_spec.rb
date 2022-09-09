require 'rails_helper'

RSpec.describe 'FoodService', :vcr do
  let(:parsed_json) { FoodService.search("sweet potatoes") }

  it 'returns first 10 results for a food search' do
    expect(parsed_json).to be_a Hash
    expect(parsed_json).to have_key(:foods)
    expect(parsed_json[:foods]).to be_a Array
    expect(parsed_json[:foods].size).to eq(10)
  end
end