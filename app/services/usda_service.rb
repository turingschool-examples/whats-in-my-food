class UsdaService
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.headers["api_key"] = ENV["usda_api_key"]
      f.adapter Faraday.default_adapter
    end
  end

  def self.search(query)
    response = conn.get("/fdc/v1/foods/search") do |c|
      c.options.params_encoder = Faraday::FlatParamsEncoder
      c.params = {api_key: ENV["usda_api_key"], query: query}
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
