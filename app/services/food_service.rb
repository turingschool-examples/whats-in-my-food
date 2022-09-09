class FoodService
  def self.foods(ingredient)
    response = conn.get("?query=#{ingredient}")
    JSON.parse(response.body, symbolize_names: true)
  end
      
  private
    def self.conn
      Faraday.new("https://api.nal.usda.gov/fdc/v1/foods/search") do |faraday|
        Faraday::FlatParamsEncoder.sort_params = false
      end
    end
end