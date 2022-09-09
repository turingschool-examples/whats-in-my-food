# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'FoodFacade', :vcr do
  it 'should return an array of foods that contain the ingrediant' do
    foods = FoodFacade.search_foods('sweet potatoe')
    expect(foods).to be_a Array
    expect(foods).to be_all Food
  end
end