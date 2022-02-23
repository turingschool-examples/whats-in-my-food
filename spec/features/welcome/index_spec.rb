require 'rails_helper'

RSpec.describe 'Whats In My Food Welcome page' do
  it 'displays search bar' do
    visit('/')
    expect(page).to have_content('Ingredient Search')
    expect(page).to have_button('Search')
  end


end
