class FoodsController < ApplicationController
  def index
    search_query = params[:q]
    conn = Faraday.new(
      url: "https://api.nal.usda.gov/fdc/",
      params: {},
      headers: {"X-Api-Key" => "#{ENV["FOOD_DATA_API_KEY"]}"
    }
    )
    response = conn.get("v1/foods/search/?query=#{search_query}")
    @foods = JSON.parse(response.body, symbolize_names: true)
  end
end
