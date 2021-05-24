class FoodService
  def self.conn
    Faraday.new('https://api.nal.usda.gov/fdc/v1/') do |request|
      request.params['api_key'] = ENV['FOOD_API']
    end
  end

  def self.searched_foods(food)
    response = conn.get("foods/search?query=#{food}&ingredients=#{food}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
