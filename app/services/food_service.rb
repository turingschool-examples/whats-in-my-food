class FoodService
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods/") do |f|
      f.headers["api_key"] = ENV["edible_api_key"]
      f.adapter Faraday.default_adapter
    end
  end

  def self.search(keyword)
    response = conn.get("search") do |c|
      c.options.params_encoder = Faraday::FlatParamsEncoder
      c.params = {
        api_key: ENV["edible_api_key"],
        query: keyword
      }
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
