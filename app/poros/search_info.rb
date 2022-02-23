class SearchInfo
  attr_reader :total_hits, :query

  def initialize(data)
    @total_hits = data[:totalHits]
    @query = data[:foodSearchCriteria][:query]
  end
end 
