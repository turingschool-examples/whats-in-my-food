class FoodsService
  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |faraday|
      faraday.headers['X-Api-Key'] = ENV['api_key']
    end
  end

  def self.search_term(query)
    response = conn.get('foods/search') do |request|
      request.headers['X-Api-Key'] = ENV['api_key']
      request.params['query'] = query
      request.params['pageSize'] = 10
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
