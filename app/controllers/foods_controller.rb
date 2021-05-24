class FoodsController < ApplicationController
  def index
    food = params[:q]
    conn = Faraday.new("https://api.nal.usda.gov")
    response = conn.get("/fdc/v1/foods/search?&query=#{food}&api_key=#{ENV['food_api_key']}")
    @food = JSON.parse(response.body, symbolize_names: true)
  end
end