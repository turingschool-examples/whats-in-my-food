class FoodService
  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params[:api_key] = ENV['govt_api_key']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_for_foods(food)
    response = conn.get("/fdc/v1/foods/search", query: food)
    parse_json(response)
  end
end
