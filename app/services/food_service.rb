class FoodService
  def self.conn
    Faraday.new('https://api.nal.usda.gov/fdc/v1/foods/') do |faraday|
      faraday.params["api_key"] = ENV['fdc_api_key']
    end
  end

  def self.food_results(query)
    response = conn.get('search?query=sweet%20potatoes&dataType=&pageSize=20&pageNumber=10&sortBy=dataType.keyword&sortOrder=asc&api_key=VErxhlRr09TaUB3QsPjjq92xa4Owh8zyTntOVeyp')
    json = JSON.parse(response.body, symbolize_names: true)
  end
end