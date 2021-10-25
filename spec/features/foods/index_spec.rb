require 'rails_helper'

RSpec.describe 'Food Index Page' do
  it 'returns first 10 foods and attributes' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_on 'Search'

    expect(current_path).to eq(foods_path)
    expect(current_page).to have_content('BAKO SWEET')
  end
end
