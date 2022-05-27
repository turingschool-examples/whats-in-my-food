require 'rails_helper'

RSpec.describe FoodsService do
  it 'gets data for 10 foods based on keyword search' do
    data = JSON.parse(File.read('spec/fixtures/potato_search.json'), symbolize_names: true)
    allow(FoodsService).to receive(:search_ingredient).and_return(data)
    
    results = FoodsService.search_ingredient('sweet potato')
    
    expect(results).to be_an Hash
    expect(results[:foods].count).to eq(10)
    expect(results[:foods][0][:gtinUpc]).to eq("041290110857")
    expect(results[:foods][0][:brandOwner]).to eq("Piggly Wiggly Company")
  end

end