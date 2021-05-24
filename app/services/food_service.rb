class FoodService
  
  def self.conn
    conn = Faraday.new(
      url: 'https://api.nal.usda.gov/fdc/v1/foods',
      headers: {'X-Api-Key' => ENV['fdc_api_key']}
    )
  end
  def self.search_foods(search_params)
    resp =conn.get('search', {query: search_params})
    JSON.parse(resp.body, symbolize_names: true)
  end
end 