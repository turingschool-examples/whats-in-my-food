# app/facades/food_facade.rb

class FoodFacade
  
  def self.foods_containing_ingredient(query)
    json = FoodService.foods_containing_ingredient(query)
  end
end
