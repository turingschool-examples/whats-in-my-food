class FoodService

  def self.name_search(query)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['food_key']}&query=#{query}&?limit=10")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end