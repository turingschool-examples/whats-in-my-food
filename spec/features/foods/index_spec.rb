require 'rails_helper'

RSpec.describe 'Foods Index Page' do 
  it 'shows the total number of items returned by the search' do 
    visit '/'

    fill_in 'q', with: "sweet potatoes"

    click_button 'Search'

    expect(page).to have_content('XXXX results found')
  end
end



