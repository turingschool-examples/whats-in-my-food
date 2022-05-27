require 'rails_helper'

RSpec.describe 'food data service' do
  describe 'class methods' do
    it '#conn' do
      expect(FoodDataService.connection).to be_a(Faraday::Connection)
    end
  end
end
