class FoodsController < ApplicationController
   def index
    # food_input = params[:search]
    food_input = 'sweet potatoes'
    conn = Faraday.new("https://api.nal.usda.gov") do |faraday|
      faraday.params['api_key'] = ENV['food_token']
    end
    response  =  conn.get("fdc/v1/foods/search?query=#{food_input}")
    food_response = JSON.parse(response.body, symbolize_names: true)[:foods]
    food_response.map do |food|
      require 'pry'; binding.pry
      food
    end
  end
end
