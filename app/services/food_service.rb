class FoodService
  def self.conn
    url = 'https://api.nal.usda.gov/fdc/v1/'
    Faraday.new(url: url, params: {api_key: ENV['foods_api_key'] })
  end

  def self.search_foods(food)
    response = conn.get('foods', { foodSearch: food})
    JSON.parse(response.body, symbolize_names: true)
  end
end
