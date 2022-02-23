class FoodsController < ApplicationController

  def index
    # food = params[:q]
    # conn = Faraday.new(url: "https://api.nal.usda.gov")
    # response = conn.get("/fdc/v1/foods/search?query=#{food}&api_key=#{ENV['foods_api_key']}")
    # @json = JSON.parse(response.body, symbolize_names: true)
    # @foods = @json[:foods]

    @foods = FoodFacade.food_info(params[:q])
  end
end
