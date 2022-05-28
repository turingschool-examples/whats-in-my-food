require 'rails_helper'

RSpec.describe FoodsFacade do
  describe 'methods' do
    it 'can get list of foods' do
      first_food = {
                    :gtinUpc=> "832298010009",
                    :description=> "SWEET POTATOES",
                    :brandOwner=> "NOT A BRANDED ITEM",
                    :ingredients=> ""
                  }

      query = 'sweet potatoes'
      result = FoodsFacade.get_list_of_foods(query)

      expect(result.first.gtinUpc).to eq(first_food[:gtinUpc])
      expect(result.first.description).to eq(first_food[:description])
      expect(result.first.brandOwner).to eq(first_food[:brandOwner])
      expect(result.first.ingredients).to eq(first_food[:ingredients])

      expect(result.count).to eq(10)
    end

  end
end
