class FoodsService
  def self.foods_query(query)
    response = conn.get("v1/foods/search?query=#{query}")

    parse_json(response)
  end

  private

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc") do |faraday|
      faraday.headers["X-Api-Key"] = ENV['foods_key']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
