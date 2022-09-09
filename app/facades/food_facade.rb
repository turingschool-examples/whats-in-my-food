class FoodFacade
   def get_food_search(food)
      results = service.food_search(food)
      results[:foods].map do |data|
         Food.new(data)
      end
   end

   def service
      FoodService.new
   end
end

