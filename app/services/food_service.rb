class FoodService
  def self.api_key
    ENV["food_api_key"]
  end

  def self.conn
    Faraday.new("https://api.nal.usda.gov")
  end

  def self.get_searched_food(params)
    response = conn.get("/fdc/v1/foods/search?=&api_key=#{api_key}&query=#{params}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
