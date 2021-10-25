class FoodService
  class << self
    def get_data(endpoint)
      response = Faraday.get(endpoint, { api_key: ENV['API_KEY'] })
      data = response.body
      JSON.parse(data, symbolize_names: true)
    end

    def search_foods(query)
      get_data("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{query}")
    end
  end
end
