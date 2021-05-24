class FoodsService 
  class << self

    def foods_search(food)
      response = conn.get('/fdc/v1/foods/search') do |req|
        req.params['query'] = "ingredients:#{food}"
        req.params['pageSize'] = 10
      end
      parse_data(response)
    end

    private

    def conn
      Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
        faraday.params['api_key'] = ENV['foods_key']
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end