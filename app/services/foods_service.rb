class FoodsService
  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/foods/') do |faraday|
      faraday.params['api_key'] = ENV['food_key']
    end
  end

  def self.get_data(url)
    response = conn.get(url)
    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_foods(ingredient)
    response = conn.get("search?query=#{ingredient}")
    data = JSON.parse(response.body, symbolize_names: true)
  end
end
