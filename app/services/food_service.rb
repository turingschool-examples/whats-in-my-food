class FoodService
  def self.search_foods(food)
    response = conn.get('foods/search', { query: food })
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    url = 'https://api.nal.usda.gov/fdc/v1/'
    Faraday.new(url: url, params: { api_key: ENV['food_data_api'] })
  end
end