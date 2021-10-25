class APIService
  # URL = 'https://fdc.nal.usda.gov/api-spec/fdc_api.html#/FDC/getFoodsSearch'

  def self.parse_json(response)
    JSON.parse(response,body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://fdc.nal.usda.gov/api-spec/fdc_api.html#/FDC') do |f|
      f.params['api_key'] = ENV['food_key']
    end
  end
end
