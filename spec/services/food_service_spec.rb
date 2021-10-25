require 'rails_helper'

RSpec.describe 'food data api' do
  before :each do
  end

  it 'gets data from the API', :vcr do
    response = FoodsService.get_data('list')
    expect(response[0]).to be_a(Hash)
    expect(response).to be_an(Array)
    expect(response[0][:fdcId]).to be_an(Integer)
    expect(response[0][:description]).to be_a(String)
    expect(response[0][:dataType]).to be_a(String)
    expect(response[0][:publicationDate]).to be_a(String)
    expect(response[0][:foodCode]).to be_a(String)
    expect(response[0][:foodNutrients]).to be_an(Array)
    expect(response[0][:foodNutrients][0]).to be_a(Hash)
  end
end
