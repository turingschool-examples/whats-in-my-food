class FoodsService
  def self.conn
    url = 'https://api.nal.usda.gov/fdc/v1/foods/'
    Faraday.new(url: url, params: { api_key: ENV['foods_api_key'] })
  end

  def self.get_foods(string)
    response = conn.get('search', { query: string})
    JSON.parse(response.body, symbolize_names: true)
  end
end
