class FoodsController < ApplicationController
  def index
    query = params[:q]
    conn = Faraday.new("https://api.nal.usda.gov") do |f|
      f.params["api_key"] = ENV["API_KEY"]
    end

    response = conn.get("/fdc/v1/foods/search") do |req|
      req.params[:q] = query
    end
    # https://api.nal.usda.gov/fdc/v1/foods/search?api_key=fl6k6gMJqzehZDs1qP9uq2dDi2gaK9Fj2stPDIUx&query=Cheddar%20Cheese

    food_info = JSON.parse(response.body, symbolize_names: true)
  end
end
