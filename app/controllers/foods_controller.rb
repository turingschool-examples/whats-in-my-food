class FoodsController < ApplicationController
  API = ENV['fdc_api_key']

  def index
    url = 'https://api.nal.usda.gov/fdc/v1/foods/search'
    response = Faraday.get(url, { query: params["q"], api_key: API }, {'Content-Type' => 'application/json'})
    resp = JSON.parse(response.body, symbolize_names: true)
    @count = resp[:totalHits]
    @foods = resp[:foods].first(10)
  end
end
