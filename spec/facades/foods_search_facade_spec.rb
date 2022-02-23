require 'rails_helper'

RSpec.describe FoodSearchFacade do

  it '::search_foods', :vcr do
    query = 'sweet potatoes'

    results = FoodSearchFacade.search_foods(query)

    results.each do |i|
      expect(i).to be_a Food
      # expect(i.brand_owner).to be_a String
      # expect(i.description).to be_a String
      # expect(i.gtinUpc).to be_a String
      # expect(i.ingredients).to be_a String
    end
  end

end
