require 'rails_helper'

RSpec.describe UsdaService do
  let(:foods) { UsdaService.foods_by_keyword("sweet potatoes") }

  it 'establishes a connection for keyword search' do 
    expect(foods).to be_a(Hash)
    expect(foods[:totalHits]).to  be_a(Integer)
    expect(foods[:foods].first[:gtinUpc]).to  be_a(String)
    expect(foods[:foods].first[:lowercaseDescription]).to  be_a(String)
    expect(foods[:foods].first[:brandOwner]).to  be_a(String)
    expect(foods[:foods].first[:ingredients]).to  be_a(String)
  end
end