class UsdaService 
  def self.conn 
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params['api_key'] = ENV['usda_key']
    end
  end

  def self.foods_by_keyword(food)
    response = conn.get("/fdc/v1/foods/search?query=#{food}&dataType=&pageSize=10&pageNumber=1")
    
    JSON.parse(response.body, symbolize_names: true)
  end
end