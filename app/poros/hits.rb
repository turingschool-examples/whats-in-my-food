class Hits
  attr_reader :number_of_results

  def initialize(data)
    @number_of_results = data
  end
end
