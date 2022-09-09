class FoodDBService
  def self.get_searched_foods(search_query)
    response = conn.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV["food_api_key"]}&query=#{search_query}")
    json = JSON.parse(response.body, symbolize_names: true)
  end


private

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params['X-API-Key'] = ENV["food_api_key"]
    end
  end
end