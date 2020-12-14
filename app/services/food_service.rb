class FoodService
  def self.search(search_term)
    search_response = conn.get("foods/search?api_key=#{ENV['FOOD_API_KEY']}&query=#{search_term}")
    parse_data(search_response)
  end

  private

  def self.conn
    Faraday.new('https://api.nal.usda.gov/fdc/v1')
  end

  def self.parse_data(data)
    JSON.parse(data.body, symbolize_names: true)
  end
end
