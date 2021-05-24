class FoodService
  class << self
    def search(query)
      request_api("search?query=#{query}")
    end

    def request_api(path)
      resp = conn.get(path) do |f|
        f.params['api_key'] = ENV['food_key']
      end
      parse_json(resp)
    end

    private

    def conn
      Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end