class FoodService

  def self.food_search(food)
    response = conn.get('/fdc/v1/foods/search') do |faraday|
    faraday.params['query'] = food
    end
    parse_json(response)
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params['api_key'] = ENV['food_key']
    end
  end
end
