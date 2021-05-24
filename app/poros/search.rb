class Search
  attr_reader :total_results,
              :query
  
  def initialize(results)
    @total_results = results[:totalHits]
    @query = results[:foodSearchCriteria][:query].capitalize
    @all_foods = results[:foods]
  end

  def foods
    @all_foods[0..9].map do |food|
      Food.new(food)
    end
  end
end