class Food
  attr_reader :total_hits, :fcdId
  def initialize(data)
    @id = data[:foods][:fcdId]
    @total_hits = data[:total_hits]
  end
end
