class FoodService
  def self.ingredient_query(ingredient)
    response = conn.get("/fdc/v1/foods/search?query=#{ingredient}&api_key=#{ENV['FUDSKY']}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new('https://api.nal.usda.gov')
  end
end
