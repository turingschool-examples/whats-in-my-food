require 'rails_helper'

RSpec.describe UsdaFacade do
  let(:foods) { UsdaFacade.foods_by_keyword("sweet potatoes") }

  it 'creates food search poros' do 
    expect(foods.first).to be_a(Food)
  end
end