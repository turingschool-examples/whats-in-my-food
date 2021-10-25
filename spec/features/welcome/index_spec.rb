require 'rails_helper'

RSpec.describe 'Index Page' do
  describe 'search form' do
    it 'has search form to find first 10 relevant foods by ingredient' do
      visit root_path

      fill_in :q, with: 'sweet potatoes'
      click_on 'Search'

      expect(current_path).to eq(foods_path)
    end
  end
end
