class FoodFacade
  def self.search(keyword)
    FoodService.search(keyword)[:foods].map do |data|
      Food.new(data)
    end
  end
end
