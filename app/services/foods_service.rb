class FoodsService

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/foods/') do |faraday|
      faraday.params['api_key'] = ENV['api_key']
    end
  end

  def self.get_data(url)
    response = conn.get(url)
    data     = response.body

    JSON.parse(data, symbolize_names: true)
  end
end
