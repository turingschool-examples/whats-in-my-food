class FoodsController < ApplicationController
  def index
    query = params[:q]
    conn = Faraday.new('https://api.nal.usda.gov')
    response = conn.get("/fdc/v1/foods/search?query=#{query}&api_key=#{ENV['FUDSKY']}")
    parsed = JSON.parse(response.body, symbolize_names: true)

    @total_results = parsed[:totalHits]

    @foods = parsed[:foods].first(10)


    binding.pry
  end
end
