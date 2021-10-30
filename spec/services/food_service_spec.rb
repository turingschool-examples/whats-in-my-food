require 'rails_helper'
# rspec spec/services/food_service_spec.rb
RSpec.describe 'food data api' do

  it 'gets data from the API', :vcr do
    response = FoodsService.search_foods("sweet+potato")

    expect(response).to be_a(Hash)
    expect(response[:foods]).to be_an(Array)
    expect(response[:foods][0]).to be_a(Hash)
    expect(response[:foods][0]).to have_key(:gtinUpc)
    expect(response[:foods][0][:gtinUpc]).to be_a(String)
    expect(response[:foods][0]).to have_key(:description)
    expect(response[:foods][0][:description]).to be_a(String)
    expect(response[:foods][0]).to have_key(:brandOwner)
    expect(response[:foods][0][:brandOwner]).to be_a(String)
    expect(response[:foods][0]).to have_key(:ingredients)
    expect(response[:foods][0][:ingredients]).to be_a(String)
    expect(response).to have_key(:totalHits)
    expect(response[:totalHits]).to be_an(Integer)
    expect(response).to have_key(:currentPage)
    expect(response[:currentPage]).to be_a(Integer)
    expect(response).to have_key(:totalPages)
    expect(response[:totalPages]).to be_an(Integer)
    expect(response).to have_key(:foodSearchCriteria)
    expect(response[:foodSearchCriteria]).to be_a(Hash)
    expect(response).to have_key(:foods)
  end

  it 'gets searched data from the API', :vcr do
    response = FoodsService.get_data("search?query=sweet+potato")

    expect(response).to be_a(Hash)
  end

  it 'gets a list of data from the API', :vcr do
    response = FoodsService.get_data("list")
    expect(response[0]).to be_a(Hash)
  end
end
