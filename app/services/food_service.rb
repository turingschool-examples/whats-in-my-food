class FoodService

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/")
  end

  def self.foods_by_ingredient(search_string)
    response = conn.get("foods/search?query=#{search_string}&api_key=#{ENV['usda_api']}")

    json = JSON.parse(response.body, symbolize_names: true)
  end

end