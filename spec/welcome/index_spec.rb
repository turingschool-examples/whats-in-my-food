require 'rails_helper'

RSpec.describe 'Welcome Page', type: :feature do
  context 'As a user' do
    context 'When I visit /' do
      scenario 'I can see a form and search button' do
        visit root_path

        expect(page).to have_current_path('/')
        expect(page).to have_field(:q)
        expect(page).to have_button('Search')
      end

      scenario 'When I fill in the form and search I am taken to /foods'
      scenario 'On /foods I should see a total number of items returned by the search'
      scenario 'On /foods I should see a list of ten foods that contain that ingredient'
      scenario 'On /foods I should see attributes for each of the ten foods'
    end
  end

end
