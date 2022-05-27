class FoodService
  def self.conn
    Faraday.new("https://api.nal.usda.gov")
  end

  def api_key
    ENV["fdc_api_key"]
  end

  def self.count_foods_returned
    response = conn.get("/fdc/v1/foods/search?=query") do |faraday|
      faraday.params["api_key"] = ENV["fdc_api_key"]
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.return_first_ten_foods
    response = conn.get("route") do |faraday|
      faraday.params["api_key"] = ENV["fdc_api_key"]
    end
  end
end
