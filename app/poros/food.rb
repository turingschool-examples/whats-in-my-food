class Food
  attr_reader :code, :description, :brand, :total_count
  def initialize(data, count)
    @code = data[:fdcId]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
    @total_count = count
  end
end
