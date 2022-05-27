require 'rails_helper'

RSpec.describe 'Wecome index' do
  before :each do
    visit root_path
  end

  it 'has form to search for foods by ingredient' do
    fill_in :q, with: 'sweet potatoes'
    click_on "Search"

    expect(current_path).to eq(foods_path)
  end
end
