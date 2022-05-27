class FoodsController < ApplicationController

  def index
    connection = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |f|
      f.headers["X-API-KEY"] = ENV['food_data_api_key']
    end
    response = connection.get("foods/search?query=#{params[:q]}")
    @data = JSON.parse(response.body, symbolize_names: true)
    
    @results = @data[:foods].find_all do |food|
      if food[:ingredients]
        food[:ingredients].include?(params[:q].upcase)
      end
    end
  end
end
