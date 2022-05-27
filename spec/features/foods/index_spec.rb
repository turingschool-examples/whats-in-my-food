require 'rails_helper'

RSpec.describe 'food index' do 
  it 'shows 10 foods based on search results' do 
  	data = JSON.parse(File.read('spec/fixtures/cheese_data.json'), symbolize_names: true)
    allow(FoodsService).to receive(:search_ingredient).and_return(data)
    
    visit root_path

    fill_in :q, with: 'cheddar cheese'
    click_on 'Search'

    expect(current_path).to eq('/foods')
    expect(page).to have_content(10)
    expect(page).to have_content('094776145164')
    expect(page).to have_content('Milton G. Waldbaum Company')
  end




end