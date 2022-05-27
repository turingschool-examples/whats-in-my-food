class FoodService
  def self.search_foods(food)
    # wip = Faraday.get('https://api.nal.usda.gov/fdc/v1/foods/search')
    response = conn.get('/fdc/v1/foods/search') do |req|
      req.params[:query] = food
    end
    JSON.parse(response.body, symbolize_names: true)
    binding.pry
    # binding.pry
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
