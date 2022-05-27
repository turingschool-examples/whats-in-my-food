require 'rails_helper'


RSpec.describe Food do 
  it 'exists and has attributes' do 
  	data = {gintUpc: 100,
  			description: 'Salt and vinegar chips',
  			ownerBrand: 'Pringles',
  			ingredients: 'Potato and additives'}

  	pringles= Food.new(data)

  	expect(pringles).to be_a(Food)
  	expect(pringles.gintUpc).to eq(100)
  end

end