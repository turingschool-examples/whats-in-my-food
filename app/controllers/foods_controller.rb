class FoodsController < ApplicationController
   def index
    # # food_input = params[:q]
    food_input = 'sweet potatoes'
    # conn = Faraday.new("https://api.nal.usda.gov") do |faraday|
    #   faraday.params['api_key'] = ENV['food_token']
    # end
    # response  =  conn.get("fdc/v1/foods/search?query=#{food_input}")
    # @food_response = JSON.parse(response.body, symbolize_names: true)[:foods]
    @food_response = FoodFacade.foods(food_input)
  end
end
