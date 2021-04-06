require 'rails_helper'

RSpec.describe FoodService, type: :model do
  describe 'instance methods' do
    it '#results' do
      results = FoodService.new.results('sweet potato')
      expect(results.first[:gtinUpc]).to eq("854640007086")
      expect(results.first[:description]).to eq("SWEET POTATO")
      expect(results.first[:brandOwner]).to eq("SOOZY'S")

      expect(results.size).to eq(50)
      expect(results.class).to eq(Array)
    end

    it '#total_results' do
      results = FoodService.new.total_results('sweet potato')

      expect(results).to eq(40788)
    end
  end
end
