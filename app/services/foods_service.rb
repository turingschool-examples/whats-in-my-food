class FoodsService
  class << self
    def get_dishes_including_ingredient(ingredient)
      response = conn.get("search/?query=#{ingredient}&pageSize=10")
      parse_data(response)
    end

    private

    def conn
      Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |faraday|
        faraday.params['api_key'] = ENV['FDC_api_key']
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
