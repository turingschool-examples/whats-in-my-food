class FoodsController < ApplicationController
  def index
    ingredient = params[:q]

    conn = Faraday.new("https://api.nal.usda.gov/fdc") do |f|
      f.params["api-key"] = ENV["API_KEY"]
    end

    response = conn.get("/v1/foods/search?&query=#{ingredient}") do |req|
      require "pry"
      binding.pry
    end
    food_info = JSON.parse(response.body, symbolize_names: true)
  end
end
