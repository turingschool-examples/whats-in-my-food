class FoodsService

  def self.search_ingredients(ingredient)
    paramiters = {query: ingredient}
    response = connection.get('fdc/v1/foods/search') do |faraday|
      paramiters.each do |k, v|
        faraday.params[k] = v
      end
    end

    future_refactor = parse_json(response)
  end

  def self.connection
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = ENV['food_api']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
