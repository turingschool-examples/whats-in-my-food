class FoodClient
  class << self
    def search(food)
      url = "/fdc/v1/foods/search?query=#{food}&pageSize=10&api_key=#{ENV['api_key']}"
      parse_data(conn.get(url))[:foods]
    end

    private

    def conn
      Faraday.new('https://api.nal.usda.gov')
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
