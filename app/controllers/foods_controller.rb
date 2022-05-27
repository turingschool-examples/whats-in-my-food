class FoodsController < ApplicationController
  def index
    conn = Faraday.new('https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = ENV['food_api_key']
    end

    response = conn.get("/fdc/v1/foods/search?query=#{params[:q]}")

    body = JSON.parse(response.body, symbolize_names: true)

    @total_results = body[:totalHits]
    @foods = body[:foods][0..9].map {|data| Food.new(data)}
  end
end
