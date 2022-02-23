class FoodService

  def self.name_search(query)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{query}&dataType=&page_size=10&pageNumber=1&api_key=#{ENV['food_key']}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end