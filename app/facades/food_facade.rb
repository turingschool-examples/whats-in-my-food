class FoodFacade
  def self.ten_foods(item)
    service = FoodService.new
    food_json = service.request_api("/fdc/v1/foods/search?query=#{item}")

    FoodInfo.new(food_json[:foods])
  end
end
