require 'rails_helper'

describe FoodFacade, :vcr do
  it 'returns an array of poros' do
    result = FoodFacade.search('sweet potatoes')
    all_poros = result.first.all? { |r| r.is_a?(FoodPoro) }

    expect(result).to be_an(Array)

    expect(all_poros).to be(true)
    expect(result.last).to eq(46_320)
  end
end
