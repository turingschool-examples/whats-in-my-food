class FoodsFacade
  class << self

    def search(keyword)
      data = FoodsService.food_search(keyword)
      data.map do |data|
        Food.new(data)
      end 
    end

  end
end
