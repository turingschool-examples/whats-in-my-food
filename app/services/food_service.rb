class FoodService
  def self.conn
    conection = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params['api_key'] = ENV['fdc_api_key']
    end
  end

  def self.food_search(food_name)
    response = conn.get("foods/search?query=#{food_name}")
        
    JSON.parse(response.body, symbolize_names: true)
  end
end