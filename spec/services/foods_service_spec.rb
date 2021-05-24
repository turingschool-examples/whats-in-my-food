require "rails_helper"

describe 'FoodsService' do
  it 'exists' do
    foods_service = FoodsService.new
    expect(foods_service).to be_an_instance_of(FoodsService)
  end

  it 'can retrieve 10 dishes including passed ingredient' do
    expect(dishes_including_ingredient).to be_a(Hash)
    expect(dishes_including_ingredient).to have_key(:foods)
    expect(dishes_including_ingredient[:foods]).to be_an(Array)
  end

  it 'returns correct 10 dishes data structure and type' do
    expect(dishes_including_ingredient[:foods][0]).to have_key(:description)
    expect(dishes_including_ingredient[:foods][0][:description]).to be_a(String)

    expect(dishes_including_ingredient[:foods][0]).to have_key(:gtinUpc)
    expect(dishes_including_ingredient[:foods][0][:gtinUpc]).to be_a(String)

    expect(dishes_including_ingredient[:foods][0]).to have_key(:brandOwner)
    expect(dishes_including_ingredient[:foods][0][:brandOwner]).to be_a(String)

    expect(dishes_including_ingredient[:foods][0]).to have_key(:ingredients)
    expect(dishes_including_ingredient[:foods][0][:ingredients]).to be_an(String)
  end
end
