class FoodService
  def food_search(query)
    get_url("/search?api_key=#{ENV['food_api_key']}&query=#{query}&pageSize=10&pageNumber=1")
  end

  def get_url(url)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/#{url}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
