class FoodService
  class << self
    def conn
      Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
        faraday.params["api_key"] = ENV['food_api_key']
      end
    end

    def search_for_food(query)
      response = conn.get("/fdc/v1/foods/search?query=#{query}&dataType=&pageSize=10&pageNumber=1")
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
