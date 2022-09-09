# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Food do
  xit 'exists and has proper  movie attributes' do
    data = {
      "fdcId": 1100678,
      "description": "Bread, sweet potato",
      "lowercaseDescription": "bread, sweet potato",
      "commonNames": "",
      "additionalDescriptions": "pre-sliced or not",
      "dataType": "Survey (FNDDS)",
      "foodCode": 51134000,
      "publishedDate": "2020-10-30",
      "foodCategory": "Yeast breads",
      "foodCategoryId": 996397,
      "allHighlightFields": "",
      "score": 470.76736
      }
    bread = Food.new(data)
    expect(bread).to be_a Food
    expect(bread.description).to eq("Bread, sweet potato")
  end
end