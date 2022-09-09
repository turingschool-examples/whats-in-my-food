require 'rails_helper'

RSpec.describe 'FoodFacadde', :vcr do
  let(:results) { FoodFacade.results("sweet potatoes") }
  let(:total) { FoodFacade.total("sweet potatoes") }
  it 'retreives results from search' do
    expect(results).to be_a Array
    expect(results).to be_all Food
  end

  it 'has results generate up as food objects with info' do
    results.each do |f|
      expect(f.id).to be_a Integer
      expect(f.code).to be_a Integer
      expect(f.description).to be_a String
      expect(f.owner).to be_a String
      expect(f.ingredients).to be_a String
    end
  end

  it 'can get total results count from a search' do
    expect(total).to eq(49676)
  end
end