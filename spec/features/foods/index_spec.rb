require 'rails_helper'

describe 'foods index' do
  before :each do
    visit root_path
    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
  end
end
