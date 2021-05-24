class FoodsService
  class << self
    def search_by_food_db(food_input)
      response =  conn.get("fdc/v1/foods/search?query=#{food_input}")
      parse_json(response)
    end

    private

    def conn
      Faraday.new("https://api.nal.usda.gov") do |faraday|
        faraday.params['api_key'] = ENV['food_api_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end