class FoodsController < ApplicationController
  def index
    conn = Faraday.new(url:"https://api.nal.usda.gov/fdc/v1/foods/", params: { api_key: ENV['food_token'] })
    response = conn.get("list?pageSize=25&pageNumber=1&api_key=#{ENV['food_token']}")
    returned_foods = JSON.parse(response.body, symbolize_names: true)
    @returned_foods = returned_foods.map do |food|
                        Food.new(food)
                      end
    require 'pry'; binding.pry
  end
end

