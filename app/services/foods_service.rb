class FoodsService 
  class << self

    private

    def conn
      Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1') do |faraday|
        faraday.params['api_key'] = ENV['foods_key']
        # faraday.headers['Accept'] = '*/*'
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end