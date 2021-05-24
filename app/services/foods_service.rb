class FoodsService

  def self.conn
      Faraday.new(
      url: "https://api.nal.usda.gov/fdc/",
      params: {},
      headers: {"X-Api-Key" => "#{ENV["FOOD_DATA_API_KEY"]}"
    }
    )
  end

  def self.search_food(query)
    response = conn.get("v1/foods/search?query=#{query}")
    parse_json(response)
  end

  private

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
