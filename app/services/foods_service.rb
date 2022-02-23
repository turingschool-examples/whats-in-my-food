class FoodsService
  def self.search_foods(food)
    response = conn.get('?', { query: food })
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    url = 'https://api.nal.usda.gov/fdc/v1/foods/search'
    Faraday.new(url: url, params: { api_key: ENV['foods_api_key'] })
  end
end
