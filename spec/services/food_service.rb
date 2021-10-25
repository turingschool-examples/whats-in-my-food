require 'rails_helper'

RSpec.describe FoodsService, type: :service do
  describe 'Search for Food' do
    xit 'returns a list of 10 foods by search creiteria' do
      expect(FoodsService.foods_by_name('sweet potatoes'))
    end
  end
end
