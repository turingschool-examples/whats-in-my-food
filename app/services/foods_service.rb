class FoodsService
  class << self
    def search_foods(query)
      response = conn.get("/fdc/v1/foods/search?query=#{query}&pageSize=25&sortOrder=asc")
      parse_json(response)
    end


    private

    def conn
      Faraday.new("https://api.nal.usda.gov") do |req|
        req.params['api_key'] = ENV['food_data_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
