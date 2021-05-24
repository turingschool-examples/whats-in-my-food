class FoodsController < ApplicationController
  def index
    # search_query = params[:q]
    # conn = Faraday.new(
    #   url: "https://api.nal.usda.gov/fdc/",
    #   params: {},
    #   headers: {"X-Api-Key" => "#{ENV["FOOD_DATA_API_KEY"]}"
    # }
    # )
    # response = conn.get("v1/foods/search?query=#{search_query}")
    @foods = FoodsService.search_food(params[:q])
    # require "pry"; binding.pry
  end
end
