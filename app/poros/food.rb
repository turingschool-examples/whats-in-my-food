class Food
  attr_reader :total_count, :code, :description, :brand, :ingredients
  def initialize(data, count)
    @total_count = count
    @code = data[:fdcID]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
