class FoodsService
  
  def self.search_ingredient(ingredient)
  	get_url("search?query=#{ingredient}")
  end

  def self.get_url(url)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/#{url}") do |faraday|
    	faraday.params['api_key'] = ENV['fooddata_api_key']
    	faraday.params['pageSize'] = 10
    	faraday.params['sortBy'] = 'dataType.keyword'
    	faraday.params['sortOrder'] = 'asc'
    end
    JSON.parse(response.body, symbolize_names: true) 
  end

end