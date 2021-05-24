class FoodService
  class << self
    def foods_containing(keyword)
      response = conn.get("fdc/v1/foods/search?query=#{keyword}")
      parse_data(response)
    end

    private

    def conn
      Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
        faraday.params['api_key'] = ENV['FOOD_TOKEN']
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
