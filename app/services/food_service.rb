class FoodService
  def self.search_foods(food)
    response = conn.get('/fdc/v1/foods/search') do |req|
      req.params[:query] = food
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  # def self.get_url(endpoint)
  #   response = Faraday.get("https://api.nal.usda.gov/fdc/v1/#{endpoint}")
  # end

  def self.conn#(arg)
    Faraday.new(
      url: "https://api.nal.usda.gov",
      params: { api_key: ENV["api_key"] })
  end
end
