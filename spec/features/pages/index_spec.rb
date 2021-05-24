require 'rails_helper'

RSpec.describe 'foods index' do

  scenario "user submits valid input" do
    json_response = File.read('spec/fixtures/foods/sweet_potato_search.json')

    stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?query=sweet+potato&api_key=#{ENV['food_api']}").
      with(
        headers: {
        }).
      to_return(status: 200, body: json_response, headers: {})

    visit '/'

    fill_in 'q', with: "sweet potato"
    click_button "Search"
    expect(current_path).to eq("/foods")

    search = "sweet potato"

    expect(page).to have_content("total foods with #{search}: #{44128}")

  end

end
