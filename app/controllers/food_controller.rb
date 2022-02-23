class FoodController < ApplicationController
  def show
    @query = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
        faraday.params[:api_key] = ENV['food_api_key']
    end
    food_response = conn.get("/fdc/v1/foods/search?query=#{@query}")
    @foods = JSON.parse(food_response.body, symbolize_names: true)
  end
end
