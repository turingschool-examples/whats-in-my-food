class FoodInfo
  attr_reader :total_results, :foods

  def initialize(data)
    @total_results = data[:totalHits]
    @foods = data[:foods]
  end

  def with_ingredient(search)
    # require "pry"; binding.pry
    @foods.select do |food|
      unless food[:ingredients].nil?
        food[:ingredients].downcase.include?(search.downcase)
      end
    end[0..9]
  end
end
