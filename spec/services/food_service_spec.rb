require "rails_helper"

RSpec.describe FoodService do
  it 'can get search info' do
    results = FoodService.search('sweet potatoes')

    expect(results).to be_a(Hash)
    expect(results[:totalHits]).to eq(45082)
    expect(results).to have_key(:foods)
  end
end
