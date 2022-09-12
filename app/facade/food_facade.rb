class FoodFacade 
  def self.create_foods(ingredient)
    foods = FoodService.get_foods(ingredient)
    # require 'pry'; binding.pry 
    count = foods[:totalHits] #included count data
    foods[:foods].map do |food| #was getting a symbol to integer conversion error...json parse related?
      Food.new(food, count)
    end
  end
end