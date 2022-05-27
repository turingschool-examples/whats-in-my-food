class FoodService
  def self.conn
    Faraday.new('https://api.nal.usda.gov') do |faraday|
      faraday.params[:api_key] = ENV['food_api_key']
    end
  end

  def self.get_foods(query)
    response = conn.get("/fdc/v1/foods/search?query=#{query}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
