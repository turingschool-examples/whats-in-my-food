require 'rails_helper'

RSpec.describe 'FoodFacade' do
  it "returns an array of food objects" do
    stub_request (:get, "https://api.nal.usda.gov/fdc/v1/foods/search?query=sweet potatoes").
        with(
          headers: {
         'Accept'=>'*/*',
         'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
         'User-Agent'=>'Faraday v0.15.4',
         'X-Api-Key'=>'opyjcKdEUKllG8P5V15kv3yKKbx1KwkGQwXbfCF3'
          }).
        to_return(status: 200, body: "", headers: {})

    facade = FoodFacade.get_food_items("sweet potatoes")
    expect(facade).to be_an Array
    expect(facade.first).to be_a FoodItem
  end
end
