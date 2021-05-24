require "rails_helper"

describe 'FoodsFacade' do
  it 'exists' do
    foods_facade = FoodsFacade.new
    expect(foods_facade).to be_an_instance_of(FoodsFacade)
  end

  it 'returns 10 dishes including the ingredient sweet potato ' do
   foods_facade = FoodsFacade.relevant_dishes('sweet potato')
   expect(foods_facade.count).to eq(10)
   expect(foods_facade.first).to be_an_instance_of(Food)
  end
end
