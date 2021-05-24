require 'rails_helper'

describe Food do
  before :each do
    @data = {
      :fdcId=>535125,
      :description=>"SWEET POTATOES",
      :brandOwner=>"ARCHER FARMS",
      :ingredients=>"SWEET POTATOES."
    }

    @food_obj  = Food.new(@data)
  end

  it 'exists' do
    expect(@food_obj).to be_an_instance_of(Food)
  end

  it 'it has attributes' do
    expect(@food_obj.gtin_upc_code).to eq(535125)
    expect(@food_obj.description).to eq("SWEET POTATOES")
    expect(@food_obj.brand_owner).to eq("ARCHER FARMS")
    expect(@food_obj.ingredients).to eq("SWEET POTATOES.")
  end
end