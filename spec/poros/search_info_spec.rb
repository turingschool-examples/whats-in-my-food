require 'rails_helper'

RSpec.describe SearchInfo do
  it 'exists' do
    data = {totalHits: 100, foodSearchCriteria: {query: "sweet potato"}}
    info = SearchInfo.new(data)

    expect(info).to be_instance_of(SearchInfo)

    expect(info.total_hits).to eq(100)
    expect(info.query).to eq("sweet potato")
  end
end 
