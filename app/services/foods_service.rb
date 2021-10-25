class FoodsService
  def self.food_search_results(search)
      response = conn.get("search?query=#{search}&api_key=#{ENV['food_api_key']}")
      parse_json(response)
  end

  def self.conn
      Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods/")
  end

  def self.parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
  end
end
