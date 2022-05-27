class FoodInfo
  attr_reader :total_results, :foods

  def initialize(data)
    @total_results = data[:totalHits]
    @foods = data[:foods]
    # require "pry"; binding.pry
  end

  def with_ingredient(search)
    require "pry"; binding.pry
  end
end
