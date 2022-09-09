class FoodsFacade

  def self.search_foods
    items = FoodService.search(query)
    items.each do |item|
      Food.new(item[:data])
    end
  end
end
