require 'rails_helper'

RSpec.describe 'Welcome Page', type: :feature do
  context 'As a user' do
    context 'When I visit /' do
      before(:each) { visit root_path }

      scenario 'I can see a form and search button' do
        expect(page).to have_current_path('/')
        expect(page).to have_field(:q)
        expect(page).to have_button('Search')
      end

      scenario 'When I fill in the form and search I am taken to /foods' do
        fill_in :q, with: 'sweet potatoes'
        click_button('Search')

        expect(current_path).to match('/foods')
      end
    end

    context 'When I search sweet potatoes' do
      before(:each) do
        visit root_path
        fill_in :q, with: 'sweet potatoes'
        click_button('Search')
      end

      scenario 'On /foods I should see a total number of items returned by the search' do
        expect(page).to have_content('Total Results')
        expect(page).to have_css('#results-number')
      end

      scenario 'On /foods I should see a list of ten foods that contain that ingredient' do
        expect(page).to have_css("#food-10")
        expect(page).to_not have_css("#food-11")
      end

      scenario 'On /foods I should see attributes for each of the ten foods' do
        within "#food-1" do
          expect(page).to have_content('UPC')
          expect(page).to have_content('Description')
          expect(page).to have_content('Brand')
          expect(page).to have_content('Ingredients')
        end
      end
    end
  end

end
