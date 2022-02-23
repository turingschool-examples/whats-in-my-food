class Food
  attr_reader :code,
              :description,
              :brand,
              :ingredients


  def initialize(data)
    @code = data[:fgtinUpc]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end

  def results_count
    @results_count
  end
end
