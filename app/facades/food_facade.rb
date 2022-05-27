class FoodFacade

  def self.search_term(term)
    
    # conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods") 
    # # response = conn.get("search?api_key=OwdyDMbrhfZf0PNawWLuhbzcljpje6VR8dAp5Jda&query=#{term}")
    # data = JSON.parse(response.body, symbolize_names: true)[:foods]
    data = FoodService.search_for_food(term)
    foods = []
    data.each do |food|
      foods << Food.new(food)
    end
    foods

  end 

end 