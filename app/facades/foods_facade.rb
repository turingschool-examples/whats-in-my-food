class FoodsFacade
  class << self
    def relevant_dishes(ingredient)
      create_dishes(FoodsService.get_dishes_including_ingredient(ingredient))
    end

    private

    def create_dishes(dish_data)
      total_found = dish_data[:totalHits]
      dish_data[:foods].map do |dishy_data|
        Food.new(dishy_data, total_found)
      end
    end
  end
end
