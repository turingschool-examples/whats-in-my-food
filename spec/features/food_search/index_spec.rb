require 'rails_helper'

RSpec.describe 'Searching for foods by ingredients' do
  it 'submitting the form takes you to /foods' do
    visit '/'
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)  
  end
end
