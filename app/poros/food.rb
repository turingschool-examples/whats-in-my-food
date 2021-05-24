class Food
  attr_reader :identifier,
              :description,
              :brand,
              :ingredients

  def initialize(data)
    @identifier = data[:gtinUpc]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
