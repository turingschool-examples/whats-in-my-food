class FoodService
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov", params: {api_key: ENV['food_data_key']})
  end

  def self.foods_with_ingredient(search)
    response = conn.get("/fdc/v1/foods/search") do |req|
      req.params['query'] = search
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
