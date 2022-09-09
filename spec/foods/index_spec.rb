# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'foods search index page', :vcr do
  it 'when you search for a food on the welcome page it brings you to /food' do
    visit('/')

    fill_in(:q, with: "sweet potatoe")
    click_on('Search')

    expect(current_path).to eq('/foods')
  end

  it 'returns a list of food with the searched ingrediant' do
    visit('/')

    fill_in(:q, with: "sweet potatoe")
    click_on('Search')

    expect(page).to have_content('Total Results: 49676')
    within("#search-results") do
      expect(page).to have_content('bread, sweet potato')
      expect(page).to have_content('Pie, sweet potato')
      expect(page).to_not have_content('Sweet potato fries, NFS')
    end
  end
end