class FoodService
  class << self
    def connection
      Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |f|
        f.params['api_key'] = ENV['food_api_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def search_food(keyword)
      response = connection.get('foods/search') do |faraday|
        faraday.params['query'] = keyword
      end

      data = parse_json(response)
    end
  end
end
