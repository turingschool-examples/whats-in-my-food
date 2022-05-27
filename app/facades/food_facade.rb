class FoodFacade
  def self.search(keyword)
    result = FoodService.search(keyword)
    result[:foods][0..9].map do |data|
      Food.new(data)
    end
  end

  def self.total_hits(keyword)
    result = FoodService.search(keyword)
    result[:totalHits]
  end
end
