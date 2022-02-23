class FoodService
  def self.connection 
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |faraday|
      faraday.params['api_key'] = ENV['food_api_key']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_foods(keyword)
    response = connection.get('foods/search') do |faraday|
      faraday.params['query'] = keyword
    end

    parse_json(response)
  end
end