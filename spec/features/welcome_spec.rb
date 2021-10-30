require 'rails_helper'
# rspec spec/features/welcome_spec.rb
RSpec.describe 'welcome page' do
  it 'can search for foods' do
    visit root_path

    expect(page).to have_field(:q)

    fill_in 'q', with: "sweet potatoes"
    click_on 'Search'

    expect(page.status_code).to eq 200
    expect(current_path).to eq(foods_path)
  end
end
