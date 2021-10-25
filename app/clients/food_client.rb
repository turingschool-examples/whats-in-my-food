class FoodClient
  class << self
    def fetch(url)
      response = conn.get(url + api_key)
      parse_data(response)
    end

    private

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def conn
      Faraday.new('https://api.nal.usda.gov/fdc')
    end

    def api_key
      "&api_key=#{ENV['food_api_key']}"
    end
  end
end
