require 'rails_helper'

describe 'food poro' do
  it 'exists and has attributes' do
    food1 = Food.new(brandName: "Annie's Vegan Mac",
                     description: 'Vegan Cheddar',
                     gtinUpc: '2398534962',
                     brandOwner: "Annie Herself",
                     ingredients: "sugar, spice, everything nice"
                    )

    expect(food1).to be_a Food
    expect(food1.name).to eq "Annie's Vegan Mac"
    expect(food1.description).to eq "Vegan Cheddar"
    expect(food1.code).to eq "2398534962"
    expect(food1.brand_owner).to eq 'Annie Herself'
    expect(food1.ingredients).to eq "sugar, spice, everything nice"
  end
end 