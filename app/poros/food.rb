class Food
  attr_reader :code, :description, :brand, :ingredients

  def initialize(data)
    @code = data[:code]
    @description = data[:description]
    @brand = data[:brand]
    @ingredients = data[:ingredients]
  end
end
