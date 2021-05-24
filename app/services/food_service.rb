class FoodService
  def self.return_food_query(food_input)
    response  =  conn.get("fdc/v1/foods/search?query=#{food_input}")
    parse_response(response)
  end

  private
  def self.conn
    conn = Faraday.new("https://api.nal.usda.gov") do |faraday|
         faraday.params['api_key'] = ENV['food_token']
       end
  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)[:foods]
  end
end

