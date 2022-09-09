require 'rails_helper'

RSpec.describe 'FoodsIndexSearchResultFacade' do 
  it 'makes service call and returns a list of foods' do
    foods =  FoodsIndexSearchResultFacade.service('sweet potatoes')

    expect(foods).to be_a(Array)
    expect(foods).to be_all(Food)
  end
end