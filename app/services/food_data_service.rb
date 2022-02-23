class FoodDataService

  def get_url(url)
    Faraday.new(url)
  end

  def search_by_ingredient(query)
    conn = get_url('https://api.nal.usda.gov/fdc/v1/foods/')

    response = conn.get("search?query=#{query}&api_key=#{ENV['food_data_key']}&dataType=Branded")

    data = JSON.parse(response.body, symbolize_names: true)
    # require "pry"; binding.pry
  end
end
