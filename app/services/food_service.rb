class FoodService

  def self.search(query)
    response = conn.get("/fdc/v1/foods/search?query=#{query}")
    parse_json(response)
  end

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov/', params: { api_key: ENV['fdc_api_key'] }) do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
