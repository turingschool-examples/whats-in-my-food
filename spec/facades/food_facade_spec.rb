require 'rails_helper'

RSpec.describe 'FoodFacade' do
  it "returns an array of food objects", :vcr do

    facade = FoodFacade.service("sweet potatoes")

    expect(facade).to be_an Array
    expect(facade.first).to be_a Hash
  end
end
