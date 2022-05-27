class FoodsController < ApplicationController

  def index
    connection = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |f|
      f.headers["X-API-KEY"] = ENV['food_data_api_key']
    end
    response = connection.get("foods/search?query=#{params[:q]}")
    @data = JSON.parse(response.body, symbolize_names: true)
  end
end
