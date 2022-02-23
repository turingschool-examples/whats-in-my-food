require 'rails_helper'

RSpec.describe 'foods index page' do
  context 'when search for food is valid' do
    it 'returns a list of items containing the search word' do
      VCR.use_cassette('sweet_potatoe') do
        visit root_path

        within '.form-inline' do
          fill_in 'q', with: 'sweet potatoes'

          click_on 'Search'

          expect(current_path).to eq(foods_path)
        end
      end
    end
  end
end
