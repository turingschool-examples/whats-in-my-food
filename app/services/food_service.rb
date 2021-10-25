class FoodService


  def self.search(query)
    response = Faraday.get('https://api.nal.usda.gov/fdc/v1/foods/search') do |f|
      f.params['api_key'] = ENV['api_key']
      f.params['query'] = query
      f.params['dataType'] = 'Branded'
    end

    JSON.parse(response.body, symbolize_names: true)
  end

end
