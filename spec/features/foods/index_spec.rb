require 'rails_helper'

RSpec.describe 'foods index' do
  it "displays data on a searched for food" do
    visit '/'

    fill_in :q, with: 'sweet potato'
    click_button 'Search'



  end
end
