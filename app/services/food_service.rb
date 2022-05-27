class FoodService 

  def self.search_for_food(term)
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods") 
    response = conn.get("search?api_key=#{ENV['food_data_key']}&query=#{term}")
    data = JSON.parse(response.body, symbolize_names: true)[:foods]

  end 


end 
