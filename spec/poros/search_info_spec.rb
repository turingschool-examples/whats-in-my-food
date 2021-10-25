require 'rails_helper'

describe SearchInfo do
  it 'has attributes' do
    VCR.use_cassette('hits') do
      @info = FoodsFacade.search_hits('sweet potato')

      expect(@info.total_hits).to eq(46320)
    end

  end
end
