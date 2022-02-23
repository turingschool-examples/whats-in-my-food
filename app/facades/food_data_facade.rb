class FoodDataFacade
  attr_reader :service

  def initialize
    @service = FoodDataService.new
  end

  def total_hits(results)
    Hits.new(results[:totalHits])
  end

  def search_by_ingredient(query)
    @foods = service.search_by_ingredient(query)[:foods].map do |data|
      Food.new(data)
    end
    # require "pry"; binding.pry
  end

end
