require 'rails_helper'

RSpec.describe "Welcome page" do
  it "searches for a food from an endpoint" do
    visit '/'
    
    fill_in :q, with: 'sweet potato'
    click_button 'Submit'

    expect(current_path).to eq('/foods')
  end
end
