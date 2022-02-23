class FoodSearchService

  def get_foods(query)
    food_name = ERB::Util.url_encode query
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{food_name}&api_key=#{ENV['foods_api_key']}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

end
