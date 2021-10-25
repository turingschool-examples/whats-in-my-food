class FdcService
  def self.search(query)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{query}&pageSize=10&api_key=#{ENV['food_api_key']}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
