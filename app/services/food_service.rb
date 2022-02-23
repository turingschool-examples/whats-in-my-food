class FoodService
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov")
  end

  def self.get_foods_by_type(food_type)
    response = conn.get("/fdc/v1/foods/search?query=#{food_type}&pageSize=50&api_key=#{ENV["food_api_key"]}")
    data = JSON.parse(response.body, symbolize_names: true)
  end
end
