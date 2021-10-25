require 'rails_helper'

describe 'welcome index' do
  it 'has a form that goes to foods index' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
  end
end
