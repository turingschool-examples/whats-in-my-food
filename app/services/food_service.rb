class FoodService

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/') do |faraday|
      faraday.params[:format] = 'json'
      faraday.params[:api_key] = ENV['food_data_key']
    end
  end

  def self.get_food_search(keyword)
    response = conn.get("v1/foods/search?query=#{keyword}")
    JSON.parse(response.body, symbolize_names: true)
  end
end

  # def self.conn
  #   Faraday.new(url: 'https://api.nal.usda.gov/fdc/')
  # end

  # def self.search_food(keyword)
  #   response = conn.get("v1/foods/search?query=#{keyword}&api_key=#{ENV['food_data_key']}")
  #   JSON.parse(response.body, symbolize_names: true)
  # end