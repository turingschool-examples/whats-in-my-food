class FoodService
  def self.find_foods_by_ingredient(food)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?") do |faraday|
      faraday.params[:query] = "#{food}"
      faraday.params[:api_key] = "#{ENV['api_key']}"
    end
    parse = JSON.parse(response.body, symbolize_names: true)
  end
end