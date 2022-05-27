class FoodService
  def self.food_search_endpoint(search_term)
    conn = Faraday.new("https://api.nal.usda.gov/fdc")
    search = "ingredients:#{search_term}"
    response = conn.get("v1/foods/search",api_key: ENV['api_key'], query: search, pageSize: 10)
    data = JSON.parse(response.body, symbolize_names: true)
  end
end
