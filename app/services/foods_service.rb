class FoodsService
  def self.getting_list
    list = '/fdc/v1/foods/search/'
    response = connection.get(list)
    JSON.parse(response.body, symbolize_names: true)

  end

  def self.connection
    url = 'https://api.nal.usda.gov'
    #url = 'https://api.nal.usda.gov/fdc/v1/foods/search/'
    #url = 'https://api.nal.usda.gov/fdc/v1/foods/search?query=sweetpotatoes&pageSize=2&api_key=DPf8e0CogccMeaaejpSclB9MeHAsXgb6N70DPLgU'
    Faraday.new(url: url) do |faraday|
      faraday.params["api_key"] = ENV['API_KEY']
      faraday.params["query"] = 'sweetpotatoes'
      #  faraday.params["pageSize"] = '2'

    end
  end
end
