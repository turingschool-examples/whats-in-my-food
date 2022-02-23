require 'rails_helper'

RSpec.describe "food index page" do 
  it 'shows the total number of items returned by the search' do 
    visit "/foods"

    expect(page.status_code).to eq 200
  end 

  it 'shows food attributes' do 

  end 
end 