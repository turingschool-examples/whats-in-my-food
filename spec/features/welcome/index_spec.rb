require 'rails_helper'

RSpec.describe 'Welcome; Landing Page' do
  before :each do
    visit root_path
  end

  it 'renders the food search form' do
    expect(page).to have_content('Ingredient Search')
    expect(find('form')).to have_field(:q)
    expect(find('form')).to have_button('Search')
  end

  it "fills in :q with sweet potatoes, clicks Search and redirects to the foods index page displaying all foods with sweet potatoes as an ingredient" do

    fill_in :q, with: 'sweet potatoes'
    click_button('Search')

    expect(current_path).to eq(foods_path)
  end
end
