class FoodsController < ApplicationController
  def index
    result = params[:q]
    conn = Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |faraday|
        faraday.headers['X-Api-Key'] = ENV['api_key']
    end
    response = conn.get('foods/search') do |request|
        request.headers['X-Api-Key'] = ENV['api_key']
        request.params['query'] = result
        request.params['pageSize'] = 10
    end
    json = JSON.parse(response.body, symbolize_names: true)
    @food_results = json[:foods].map do |food_data|
        Food.new(food_data)
    end
  end
end
