
require 'rails_helper'

RSpec.describe Food, type: :poro do
  describe 'object' do
    it 'exists and has attributes' do
      data = { fgtinUpc: '1234', description: "this is food", brandOwner: "Kroger", ingredients: "yes"}
      food = Food.new(data)

      expect(food).to be_a(Food)
      expect(food).to have_attributes(code: '1234')
      expect(food).to have_attributes(description: "this is food")
      expect(food).to have_attributes(brand: 'Kroger')
      expect(food).to have_attributes(ingredients: 'yes')
    end
  end
end
