require "pry"

class FoodsService
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc")
  end

  def self.api_key
    ENV["fdc_api_key"]
  end

  def self.get_search(params)
    response = conn.get("v1/foods/search?api_key=#{api_key}&query=#{params}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
