class FoodsController < ApplicationController 
  def index
    @query = params[:q]
    key = "X5MqWQCLRSlxUlXnpdm2q51W13hIhOhj5krsN0ep"
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers['api_key'] = "X5MqWQCLRSlxUlXnpdm2q51W13hIhOhj5krsN0ep" #ENV['usda_api_key']
    end
    
    response = conn.get("/fdc/v1/foods/search?query=#{@query}&numberOfResultsPerPage=10&api_key=#{key}")

    json = JSON.parse(response.body, symbolize_names: true)
    
    @num_results = json[:totalHits]
    
    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end