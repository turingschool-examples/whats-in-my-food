class FoodsService
  def self.get_list_of_foods(q)
  end_point = '/fdc/v1/foods'
    response = conn.get(end_point) do |faraday|
      faraday.params['api_key'] = ENV['food_api_key']
      faraday.params['query'] = q
    end 
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    url = 'https://api.nal.usda.gov'
    Faraday.new(url: url)    
  end
end 