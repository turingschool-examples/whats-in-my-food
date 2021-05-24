require 'rails_helper'

RSpec.describe 'foods index' do

  scenario "user submits valid input" do
    json_response = File.read('spec/fixtures/foods/sweet_potato_search.json')

    # stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?query=sweet+potato&api_key=#{ENV['food_api']}").
    #   with(
    #     headers: {
    #     }).
    #   to_return(status: 200, body: json_response, headers: {})


    stub_request(:get, "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['food_api']}&query=sweet%20potato").
      with(
        headers: {
    	  'Accept'=>'*/*',
    	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    	  'User-Agent'=>'Faraday v1.4.2'
        }).
        to_return(status: 200, body: json_response, headers: {})








    visit '/'



    fill_in 'q', with: "sweet potato"
    click_button "Search"
    expect(current_path).to eq("/foods")

    search = "sweet potato"

    expect(page).to have_content("total foods with #{search}: #{44128}")

    expected_1 = {:brand=>"Wholesale Produce Supply, LLC", :description=>"sweet potatos", :gtinUpc=>"790629122251", :ingredients=>"SWEET POTATO, SUGAR, PAPRIKA (COLOR), PALM OIL, TOMATO POWDER, CORN STARCH, SALT, RICE FLOUR, SPICES, CHIPOTLE CHILI PEPPER, GARLIC POWDER, SODIUM DIACETATE, ONION POWDER, RICE HULL CONCENTRATE, EXTRACTIVE OF PAPRIKA (COLOR), NATURAL FLAVOR, SMOKE FLAVORING."}

    expect(page).to have_content(expected_1[:description])
    expect(page).to have_content(expected_1[:brand])
    expect(page).to have_content(expected_1[:gtinUpc])
    expect(page).to have_content(expected_1[:ingredients])


  end

end
