require 'rails_helper'

RSpec.describe 'Food Index' do
  describe 'As a User' do
    describe 'Visiting welcome Index' do
      it 'returns a list of 10 foods by search creiteria' do
        expect(FoodsService.foods_by_name('sweet potatoes'))
        visit foods_path
        fill_in 'Food', with: 'sweet potatoes'
        click_on 'Search'

        expect(current_path).to eq('/foods')
        expect(page).to have_content('food')
        expect(page).to have_content(30_0000)
      end
    end
  end
end
