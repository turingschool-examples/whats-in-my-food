class FoodService
  def self.search_by_ingredient(ingredient)
    response = Faraday.get('https://api.nal.usda.gov/fdc/v1/foods/search') do |request|
      request.params['api_key'] = ENV['api_key']
      request.params['query'] = ingredient
      request.params['pageSize'] = 10
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
