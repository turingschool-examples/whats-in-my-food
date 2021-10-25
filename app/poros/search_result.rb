class SearchResult
  attr_reader :total_results, :foods

  def initialize(data)
    @total_results = data[:total_results]
    @foods = data[:foods]
  end
end
