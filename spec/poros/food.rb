require 'rails_helper'

RSpec.describe Food do
  let(:food_list) { UsdaFacade.foods_by_keyword("sweet potatoes")}

  it 'attributes' do 
    expect(food_list.first.upc).to eq("8901020020844")
    expect(food_list.first.description).to eq("sweet potatoes")
    expect(food_list.first.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(food_list.first.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end