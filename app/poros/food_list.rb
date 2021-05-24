class FoodList
  attr_reader :total_hits,
              :foods

  def initialize(food_hash)
    @total_hits = food_hash[:totalHits]
    @foods = food_hash[:foods].first(10).map { |food| FoodItem.new(food) }
  end
end