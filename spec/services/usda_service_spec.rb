require 'rails_helper'

RSpec.describe 'usda service' do

  it 'can search by name limit 10' do
    data = UsdaService.name_search_items("sweet potatoes")

    expect(data.count).to eq(10)
  end

  it 'returns total data for a search' do
    data = UsdaService.name_search("sweet potatoes")
    expect(data[:totalHits]).to eq(49676)
  end
end
