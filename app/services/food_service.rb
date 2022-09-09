class FoodService
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov")
    binding.pry
  end

  def self.get_all_food_data(search_params)
    response = conn.get("/fdc/v1/foods/search?api_key=#{ENV['food_api_key']}&query=#{search_params}")
    # response =  Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=R0usgIZUXL2umn3LYnclsi1juWdnKOTvZuAGKzPN&query=#{search_params}")
    binding.pry
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
  end

end
