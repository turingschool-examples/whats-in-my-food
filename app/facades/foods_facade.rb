class FoodsFacade
  def self.service
    @_service ||= FoodsService.new
  end

  def self.search_by_keyword(word)
    filtered_results = []
    
    service.search_by_keyword(word)[:foods].each do |food|
      if food[:ingredients].downcase.include?(word)
        filtered_results << food
      end
    end
    filtered_results.first(10).map do |food|
      Food.new(food)
    end
  end
end