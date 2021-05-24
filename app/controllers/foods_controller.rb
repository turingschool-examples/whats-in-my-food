class FoodsController < ApplicationController
  def index
    response = Faraday.get('https://api.nal.usda.gov/fdc/v1/foods/search') do |request|
      request.params['api_key'] = 'nTNqChgK4a5uwh6kyqJ0B2NCCC9IovJRJT5oLrge'
      request.params['query'] = "sweet potatoes"
      request.params['ingredients'] = "sweet potatoes"
    end

    parsed = JSON.parse(response.body, symbolize_names: true)

    @foods = []
    @total_returned = parsed[:totalHits]


    10.times do |i|
      @foods << Food.new(parsed[:foods][i])
    end
  end
end
