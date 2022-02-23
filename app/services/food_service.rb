class FoodService
  def self.conn
      Faraday.new("https://api.nal.usda.gov") do |faraday|
        faraday.params['api_key'] = ENV['foods_api_key']
      end
    end

    def self.food_info(food)
      response = conn.get("/fdc/v1/foods/search?query=#{food}&api_key=#{ENV['foods_api_key']}")
      JSON.parse(response.body, symbolize_names: true)
    end
end
