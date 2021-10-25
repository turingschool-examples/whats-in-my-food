class FoodFacade
  class << self
    def foods_by_keyword(search)
      data = FoodService.foods(search)[:foods]

      data.map do |food|
        FoodPoro.new(food)
        require "pry"; binding.pry
      end
    end
  end
end
