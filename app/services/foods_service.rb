class FoodsService
  def self.conn
    Faraday.new("https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params['api_key'] = ENV['food_api']
      faraday.params['format'] = 'abridged'
    end
  end

  def self.get_foods(search)
    response = conn.get("food/#{search}?")
    JSON.parse(response.body, symbolize_names: true)
  end
end
