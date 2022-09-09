module CallHelper
  def conn
    Faraday.new('https://api.nal.usda.gov/fdc/v1/foods') do |f|
      f.params['api_key'] = ENV['food_key']
    end
  end

  def json_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end