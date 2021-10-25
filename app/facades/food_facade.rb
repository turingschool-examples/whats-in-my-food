class FoodFacade
  def self.search(query)
    query.gsub!(' ', '+')
    response = FoodService.search(query)
require "pry"; binding.pry
    foods = response[:foods].slice(0, 10)

    res = foods.map do |food|
      Food.new(food)
    end

    return {total_hits: response[:totalHits], foods: res}
  end
end
