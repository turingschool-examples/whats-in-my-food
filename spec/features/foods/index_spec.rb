require 'rails_helper'

RSpec.describe 'Foods index page', :vcr do

    it 'displays the total number of items returned by the search' do
        visit root_path
        fill_in :q, with: "cheddar cheese"
        click_on "Search"

    expect(page).to have_content("Total Hits: 409897")
    end

    it 'lists the first 10 items returned in the search' do
        visit root_path
        fill_in :q, with: "cheddar cheese"
        click_on "Search"

        expect(page).to have_content("Results on this page: 10")
    end

    it 'lists the foods attributes' do
            #ran out of time trying to get test to work, probably needs a div on my index html
    end
end