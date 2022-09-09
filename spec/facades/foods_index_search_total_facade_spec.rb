require 'rails_helper'

RSpec.describe 'FoodsIndexSearchTotalFacade' do 
  it 'makes service call and returns the number of results' do
    total_foods =  FoodsIndexSearchTotalFacade.service('sweet potatoes')

    expect(total_foods).to be_an(Integer)
  end
end