class FoodService
  def self.foods(ingredient)
    response = conn.get do |req|
      req.params = { api_key: Figaro.env.foods_api_key, query: ingredient, pageSize: 10 }
    end
    JSON.parse(response.body, symbolize_names: true)
  end
      
  private
    def self.conn
      Faraday.new("https://api.nal.usda.gov/fdc/v1/foods/search") do |faraday|
        Faraday::FlatParamsEncoder.sort_params = false
        faraday.options.params_encoder = Faraday::FlatParamsEncoder
        faraday.adapter Faraday.default_adapter
      end
    end
end