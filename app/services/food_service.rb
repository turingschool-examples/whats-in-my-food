class FoodService
  def self.find_foods_by_name(item)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?") do |faraday|
      faraday.params[:query] = "#{item}"
      faraday.params[:pageSize] = 10
      faraday.params[:api_key] = "#{ENV['food_api_key']}"
    end
    parse = JSON.parse(response.body, symbolize_names: true)
  end
end
