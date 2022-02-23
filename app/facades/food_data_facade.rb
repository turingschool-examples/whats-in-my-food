class FoodDataFacade
  attr_reader :service

  def initialize
    @service = FoodDataService.new
  end

  def total_hits(query)
    service.search_by_ingredient(query)[:totalHits]
  end

  def search_by_ingredient(query)
    @foods = service.search_by_ingredient(query)[:foods].map do |data|
      Food.new(data)
    end
  end

end
