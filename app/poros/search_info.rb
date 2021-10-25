class SearchInfo
  attr_reader :total_hits

  def initialize(results)
    @total_hits = results[:totalHits]
  end

end
