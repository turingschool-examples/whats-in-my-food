require 'rails_helper'

RSpec.describe 'Root Path' do
  before(:each) do
    visit "/"
  end
  context 'When I visit / and fill in the search form and click search' do
    it 'takes me to /foods where I should see a total number of items returned' do

    end

    it 'takes me to /foods where I see a list of ten foods that contain my search item' do

    end

    it 'shows the foods description, upc code, brand, and ingredients' do

    end
  end
end
