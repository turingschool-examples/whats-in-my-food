class FoodsService
  def self.foods_by_ingredient(food)
    get_url("foods/search?query=#{food}&dataType=&pageSize=10&pageNumber=1&sortBy=dataType.keyword&sortOrder=asc")
  end

  def self.get_url(url)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/#{url}") do |faraday|
    	faraday.params['api_key'] = ENV['foods_api_key']
    end
  test =  JSON.parse(response.body, symbolize_names: true)
  end
end
