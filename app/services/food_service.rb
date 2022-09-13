class FoodService
  def self.conn 
    Faraday.new("https://api.nal.usda.gov/") do |faraday| #only keeps up until .gov
      faraday.params['api_key'] = ENV['food_api_key']
    end
  end

  def self.get_foods(ingredient)
    response = conn.get('fdc/v1/foods/search', {query: ingredient}) #now i get total hits using /search; moves rest of path to the conn.get rather than line 3
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
