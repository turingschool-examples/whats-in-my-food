class FoodService
  def self.conn 
    Faraday.new("https://api.nal.usda.gov/fdc/v1/foods") do |faraday|
      faraday.params['api_key'] = ENV['food_api_key']
    end
  end

  def self.get_foods(ingredient)
    response = conn.get('list', {query: ingredient})
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
