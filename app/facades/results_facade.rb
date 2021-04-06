class ResultsFacade
  def self.results(q)
    @foods = FoodService.new.results(q).first(10).map do |data|
        Food.new(data)
      end

  end

  def self.total_results(q)
    @total_results = FoodService.new.total_results(q)
  end
end
