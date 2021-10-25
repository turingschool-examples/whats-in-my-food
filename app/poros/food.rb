class Food
  attr_reader :totalHits,
              :currentPage,
              :totalPages,
              :foods

  def initialize(data)
    @totalHits = data[:totalHits]
    @currentPage = data[:currentPage]
    @totalPages = data[:totalPages]
    @foods = data[:foods]
  end
end
