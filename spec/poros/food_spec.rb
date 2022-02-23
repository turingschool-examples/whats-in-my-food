require 'rails_helper'
RSpec.describe Food do
  it "creates food object from parsed JSON hash" do
    data = {
            :description=>"BUTTER",
            :gtinUpc=>"032601033125",
            :brandOwner=>"Taylor Fresh Foods, Inc.",
            :ingredients=>"ORGANIC BUTTER LETTUCE LEAVES."
          }
    butter = Food.new(data)
    expect(butter).to be_a(Food)
    expect(butter.description).to eq('BUTTER')
    expect(butter.brand_owner).to eq('Taylor Fresh Foods, Inc.')
    expect(butter.ingredients).to eq('ORGANIC BUTTER LETTUCE LEAVES.')
    expect(butter.gtin).to eq('032601033125')
  end
end
