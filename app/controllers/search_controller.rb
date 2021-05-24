class SearchController < ApplicationController
  def index
    @food_info = FoodFacade.foods_containing(params[:q])
    @food_count = FoodFacade.count_foods_containing(params[:q])
  end
end
    # food_input = 'sweet potatoes'
    # conn      = Faraday.new("https://api.nal.usda.gov") do |faraday|
    #   faraday.params['api_key']
    # end
    # response  =  conn.get("fdc/v1/foods/search?query=#{food_input}")
    # @food_info = JSON.parse(response.body, symbolize_names: true)[:foods]
    # @food_info.map do |info|
    #   # require 'pry'; binding.pry
    #   info
