require 'rails_helper'

RSpec.describe 'Index Page' do
  describe 'search form' do
    it 'has search form to find first 10 relevant foods by ingredient' do
      visit root_path
      save_and_open_page


      expect(current_path).to eq(root_path)
    end
  end
end
