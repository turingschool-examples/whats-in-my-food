class FoodFacade
  def self.search(keyword)
    FoodService.search(keyword)[:foods][0..9].map do |data|
      Food.new(data)
    end
  end
end
