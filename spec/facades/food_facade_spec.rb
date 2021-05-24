require 'rails_helper'

RSpec.describe 'FoodFacade' do
  it "returns an array of food objects" do
    json_response = File.read('spec/fixtures/food_items.json')
    stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=TETafShutNWdF4DNaCDCPt5vLzinA0S4elKEbloh&query=sweet%20potatoes").
             with(
               headers: {
           	  'Accept'=>'*/*',
           	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
           	  'User-Agent'=>'Faraday v1.4.2'
               }).
             to_return(status: 200, body: json_response, headers: {})

    facade = FoodFacade.get_food_items("sweet potatoes")
    expect(facade).to be_an Array
    expect(facade.first).to be_a FoodItem
  end
end
