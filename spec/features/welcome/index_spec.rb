require 'rails_helper'
RSpec.describe 'welcome page' do
  before :each do

    visit "/"
  end
  it 'can search for foods with a keyword' do
    VCR.use_cassette('welcome') do
      fill_in :q, with: 'sweet potato'
      click_on 'Search'

      expect(current_path).to eq("/foods")
    end
  end
end
