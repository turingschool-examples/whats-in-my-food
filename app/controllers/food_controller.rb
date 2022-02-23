class FoodController < ApplicationController
  def show
    query = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1") do |faraday|
        faraday.params[:api_key] = ENV['food_api_key']
    end
    response = conn.get("/foods/search?api_key=#{conn.params[:api_key]}&query=#{query}")
    @food = JSON.parse(response.body, symbolize_names: true)
    require "pry"; binding.pry
  end
end
