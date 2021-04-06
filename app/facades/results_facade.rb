class ResultsFacade
  def self.results(q)
    @foods = FoodService.new.results(q)

  end

  def self.total_results(q)
    @total_results = FoodService.new.total_results(q)
  end
end
