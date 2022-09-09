class Food
  attr_reader :total_hits, :description

  def initialize(data)
    @total_hits = data[:totalHits]
    @description = data[:foods].map do |food|
      food[:lowercaseDescription]
    end
  end
end