# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'FoodService', :vcr do
  it 'can display search results' do
    parse_json = FoodService.search_foods('sweet potatoe')

    expect(parse_json).to be_a(Array)
    expect(parse_json.first).to include(:fdcId, :description)
    expect(parse_json.count).to eq(50)
  end
end