class FoodsService
  def self.getting_list(query)
    list = '/fdc/v1/foods/search/'

    response = connection.get(list) do |faraday|
      faraday.params["api_key"] = ENV['API_KEY']
      faraday.params["query"] = query
    end
     JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    url = 'https://api.nal.usda.gov'

    Faraday.new(url: url)
  end
end
