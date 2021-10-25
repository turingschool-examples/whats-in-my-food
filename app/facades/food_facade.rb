class FoodFacade
  def self.search(query)
    data = FdcService.search(query)
    foods = data[:foods].map do |food|
      Food.new(food)
    end
    hash = {total_hits: data[:totalHits], top_ten: foods}
  end
end
