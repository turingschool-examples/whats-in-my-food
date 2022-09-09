class FoodService
  def self.get_food_details(query)
    end_point = '/fdc/v1/foods/search'
    response = connection.get(end_point) do |faraday|
      faraday.params['api_key'] = ENV['foods_api_key']
      faraday.params['query'] = query
    end
    JSON.parse(response.body, symbolize_names: true)
    # binding.pry
  end

  def self.connection
    Faraday.new('https://api.nal.usda.gov')
  end
end