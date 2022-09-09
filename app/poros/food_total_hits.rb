class FoodTotalHits
  attr_reader :total_hits
  
  def initialize(data)
    @total_hits = data[:totalHits]
  end
end