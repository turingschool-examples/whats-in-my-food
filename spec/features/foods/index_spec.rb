require 'rails_helper'

RSpec.describe 'foods page' do
  it 'exists' do
    visit foods_path
    expect(current_path).to eq(foods_path)
  end
end
