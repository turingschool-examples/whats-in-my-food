class FoodService
  def food_search(query)
    get_url("/search?#{ENV['food_api_key']}&query=#{query}")
  end

  def get_url(url)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/#{get_url}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
