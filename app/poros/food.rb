class Food
  attr_reader :total_count, :code, :description, :brand, :ingredients
  def initialize(data, count)
    @total_count = count
    @code = data[:fdcId]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
