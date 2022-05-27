class FoodsService
  class << self

    def connection
      Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/foods/') do |faraday|
        faraday.params['api_key'] = ENV['usda_api_key']
      end
    end

    def get_data(url)
      response = connection.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end
    
  end
end
