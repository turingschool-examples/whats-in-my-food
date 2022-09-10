class FoodService

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params['api_key'] = ENV['food_key']
    end
  end

  def self.json_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search(query)
    response = conn.get("/fdc/v1/foods/search?query=#{query}")
    json_response(response)
  end
end
