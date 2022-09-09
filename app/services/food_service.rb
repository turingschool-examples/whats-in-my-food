class FoodService
  def self.search_food(food)
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday| 
      faraday.params['api_key'] = ENV['food_api_key']
      faraday.params['query'] = food 
      faraday.params['pageSize'] = 10 
    end

    response = conn.get("/fdc/v1/foods/search")
    JSON.parse(response.body, symbolize_names: true) if response.status == 200 
  end
end