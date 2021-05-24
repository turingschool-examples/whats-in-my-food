class FoodsController < ApplicationController
  def index
    # conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
    #   faraday.headers["X-API-KEY"] = ENV['food_api_key']
    # end
    # response = conn.get("/fdc/v1/foods/search?query=#{params[:q]}")
    # @results = JSON.parse(response.body, symbolize_names: true)
    # @foods = @results[:foods].first(10)
    @results = FoodFacade.total_results(params[:q])
    @foods = FoodFacade.find_foods(params[:q])
  end
end
