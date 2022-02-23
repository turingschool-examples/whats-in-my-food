class FoodSearchService

  def search_foods(query)
    food_name = ERB::Util.url_encode query
    require "pry"; binding.pry
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{food_name}&api_key=#{ENV['movies_api_key']}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

end
