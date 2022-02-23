class FoodService


  def self.get_url(url)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/#{url}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
