require 'rails_helper'

describe FoodFacade, :vcr do
  it 'returns an array of poros' do
    result = FoodFacade.search('chicken')
    all_poros = result.all? { |r| r.is_a?(FoodPoro) }

    expect(result).to be_an(Array)
    expect(result.size).to eq(10)
    expect(all_poros).to be(true)
  end
end
