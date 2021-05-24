class FoodsController < ApplicationController
  def index
    food_input         = params[:q]

    conn               = Faraday.new("https://api.nal.usda.gov") do |faraday|
                          faraday.params['api_key'] = ENV['food_api_key']
                        end

    response           =  conn.get("fdc/v1/foods/search?query=#{food_input}")

    searched_food_info = JSON.parse(response.body, symbolize_names: true)
    @foods_info        = searched_food_info[:foods].map do |food_info|
      Food.new(food_info)
    end
    @search_food_count = searched_food_info[:totalHits]
  end
end
