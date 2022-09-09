class FoodService 

  class << self

    def conn 
      Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
        faraday.headers["X-API-KEY"] = ENV['food_api_key']
      end
    end

    def foods_by_search(food)
      response = conn.get("foods/search?query=#{food}")
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end

# https://api.nal.usda.gov/fdc/v1/foods/search?query=sweet potatoes&pageSize=2&api_key=COIfFbWH6V2TxPsRe7t1mPyxjYSzvJO5NbjJAi0d