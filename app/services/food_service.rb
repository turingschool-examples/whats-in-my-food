class FoodService

  def self.foods_search(query)
    get_url("/search?query=#{query}&api_key=#{ENV['foods_api_key']}")
  end 

  def self.get_url(url)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods#{url}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
