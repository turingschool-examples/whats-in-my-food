class FoodsService
  class << self
    def get_data(endpoint)
      response = Faraday.get(endpoint)
      JSON.parse(response.body, symbolize_names: true)
    end

    def food_search(keyword)
      foods = get_data("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{keyword}&pageSize=10&api_key=#{ENV['API_KEY']}")
      foods[:foods]
    end
  end
end
