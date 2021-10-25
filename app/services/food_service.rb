class FoodService
  def request_api(path)
    response = conn("https://api.nal.usda.gov").get(path)
    parse_json(response)
  end

  private

  def conn(url)
    Faraday.new(url: url, params: { api_key: Pusher.key} )
  end

  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
