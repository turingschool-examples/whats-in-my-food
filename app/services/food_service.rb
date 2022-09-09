class FoodService
  def self.search_food(food)
    response = conn.get("/fdc/v1/foods/search?query=#{food}")
    response_check(response)
  end

  private 
    def self.conn
      Faraday.new(url: "https://api.nal.usda.gov") do |faraday| 
        faraday.params['api_key'] = ENV['food_api_key']
        faraday.params['pageSize'] = 10 
      end
    end

    def self.response_check(response)
      JSON.parse(response.body, symbolize_names: true) if response.status == 200 
    end
end