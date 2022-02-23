require 'rails_helper'

RSpec.describe Food do
  let(:data) { {:gtinUpc=>'12345', :description=>'a lotta potato', :brandOwner=>'kellog', :ingredients=>'sweet potato'} }

  it 'exists' do
    expect(Food.new(data)).to be_a Food
  end

  it 'is initialized with attributes' do
    expect(Food.new(data).upc).to eq('12345')
    expect(Food.new(data).description).to eq('a lotta potato')
    expect(Food.new(data).brand).to eq('kellog')
    expect(Food.new(data).ingredients).to eq('sweet potato')
  end

end
