require 'rails_helper'

RSpec.describe 'usda facade' do

  it 'can search by name limit 10' do
    data = UsdaFacade.name_search_items("sweet potatoes")

    expect(data.count).to eq(10)
  end

  it 'returns total hits for a search' do
    data = UsdaFacade.name_search_total_count("sweet potatoes")
    expect(data).to eq(49676)
  end
end
