class FoodService
  def self.search(search_term)
    query = search_term.gsub(' ','%20') 
    response = conn.get("/fdc/v1/foods/search?#{query}")
    JSON.parse(response.body, symbolize_names: true) if response.status == 200
  end
  
  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov', params: { api_key: ENV['FOOD_API_KEY'] })
  end
end