class FoodFacade
  def self.ten_foods(item)
    service = FoodService.new
    food_json = service.request_api("/fdc/v1/foods/search?query=#{item}")[:foods]

    food_json.map do |item_info|
      FoodInfo.new(item_info)
    end
  end
end
