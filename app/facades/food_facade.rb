class FoodFacade
  def self.search(query)
    food_data = FdcService.search(query)
    require "pry"; binding.pry
end
