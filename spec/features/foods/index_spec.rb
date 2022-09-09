require 'rails_helper'

RSpec.describe 'index movies page' do

  it "is able to for food ", :vcr do

    fill_in('Search', with: 'sweet potato')

    click_button 'Search'

    expect(page).to have_content("Tom & Jerry")
    expect(page).to have_content("Vote Average: 7")
  end
end
