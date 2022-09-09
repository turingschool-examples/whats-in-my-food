class FoodService

  def self.search_food_by_keyword(keyword)
    response = conn.get("/foods/search?query=#{keyword}&pageSize=10&pageNumber=1&sortBy=dataType.keyword&sortOrder=asc")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['food_api_key']
    end
  end
end