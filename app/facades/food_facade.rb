class FoodFacade
  class << self

    def find_food(keyword)
      response = FoodService.search_food(keyword)

      response.map do |data|
        Food.new(data)
      end
    end
  end
end
