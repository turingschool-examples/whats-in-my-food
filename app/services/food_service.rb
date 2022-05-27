class FoodService
  def self.search(ingredient)
    response = conn.get("/fdc/v1/foods/search?query=#{ingredient}")
    get_json(response)

  end

  def self.conn
    Faraday.new("https://api.nal.usda.gov") do |faraday|
      faraday.params['api_key'] = ENV['fda_api_key']
    end
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
