require 'rails_helper'
RSpec.describe FoodService do
  it "sends a request with search params and parses", :vcr do
    parsed = FoodService.name_search("anise")
    expect(parsed[:totalHits]).to eq(553)
  end
end