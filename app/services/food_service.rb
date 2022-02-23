# app/services/food_service.rb

class FoodService 
  def self.connection
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |faraday|
      faraday.params['api_key'] = ENV['food_api_key']
    end
  end

  def self.foods_containing_ingredient(query)
    response = connection.get('foods/search') do |request|
      request.params['api_key'] = ENV['food_api_key']
      request.params['query'] = ENV["#{query}"]
    end

    JSON.parse(response.body, symbolize_names: true)
  end
end
