class FoodsService
  def self.food_with(ingredient)
    response = conn.get("/fdc/v1/foods/search?query=#{ingredient}&pageSize=10")
    parse_json(response)
  end

  private

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = ENV.fetch('usda_api_key', nil)
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end