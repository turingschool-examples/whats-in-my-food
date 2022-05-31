class FoodService

  def self.search_food(search)
    connection = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |f|
      f.headers["X-API-KEY"] = ENV['food_data_api_key']
    end

    response = connection.get("foods/search?query=#{search}")
    JSON.parse(response.body, symbolize_names: true)
  end

end
