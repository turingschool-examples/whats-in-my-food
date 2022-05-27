class FoodsFacade
  class << self

    def total_items(ingredient)
      result = FoodsService.get_data("search?query=#{ingredient}")
      result[:totalHits]
    end

    def first_ten_foods(ingredient)
      result = FoodsService.get_data("search?query=#{ingredient}")
      result[:foods][0..9].map do |data|
        Food.new(data)
      end
    end

  end
end
