class FoodService
  def self.conn 
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params['api_key'] = ENV['food_api_key']
    end
  end

  def self.get_foods(ingredient)
    response = conn.get('food', {query: ingredient})
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end
