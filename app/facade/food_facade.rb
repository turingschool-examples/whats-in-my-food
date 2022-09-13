class FoodFacade 
  def self.create_foods(ingredient)
    foods = FoodService.get_foods(ingredient)
    # require 'pry'; binding.pry 
    count = foods[:totalHits] #includes count data
    foods[:foods][0..9].map do |food| #adds range to get only 10 results
      Food.new(food, count)
    end
  end
end