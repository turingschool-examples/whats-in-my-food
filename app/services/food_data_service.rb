class FoodDataService

  def get_food_items(url)
    response = conn.get("foods/search?query=#{params[:q]}")
    @data = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    connection = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |f|
      f.headers["X-API-KEY"] = ENV['food_data_api_key']
    end
  end
end
