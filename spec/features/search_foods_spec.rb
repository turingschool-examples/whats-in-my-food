require 'rails_helper'

RSpec.describe 'Food search' do
  describe 'happy path' do
    it 'see a list of TEN foods that contain the seached ingredient and their details' do
      VCR.use_cassette('search_sweet_potatoes') do
        visit root_path
        fill_in :q, with: "sweet potatoes"
        click_on "Search"
        expect(current_path).to eq('/foods')
        expect(page.status_code).to eq 200
        expect(page).to have_content("44128 Results")
        expect(page).to have_content("492111402857")
        expect(page).to have_content("Description: SWEET POTATOES")
        expect(page).to have_content("ARCHER FARMS")
        expect(page).to have_content("Ingredients: SWEET POTATOES.")
      end
    end
  end
end
