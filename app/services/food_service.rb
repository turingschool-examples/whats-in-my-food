class FoodService
  def call_for_items(food)
    response = conn.get("/fdc/v1/foods/search?query=#{food}")
    parse_data(response)
  end

  private

  def conn
    Faraday.new(
      url: "https://api.nal.usda.gov",
      params: { api_key: ENV['FDA_TOKEN']}
    )
  end

  def parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
