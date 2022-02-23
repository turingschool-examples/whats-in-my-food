class FoodService
  def self.conn
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods")
  end

  def self.foods(food)
    response = conn.get("search?api_key=#{ENV['food_api_key']}&query=#{food}&dataType=Branded&pageSize=10")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
