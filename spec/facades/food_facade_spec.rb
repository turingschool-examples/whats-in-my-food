require 'rails_helper'

describe FoodFacade, :vcr do
  let(:result) { FoodFacade.search('sweet potatoes') }

  it 'returns an array of poros' do
    all_poros = result.first.all? { |r| r.is_a?(FoodPoro) }

    expect(all_poros).to be(true)
  end

  it 'has the total hits' do
    expect(result.last).to eq(46_320)
  end
end
